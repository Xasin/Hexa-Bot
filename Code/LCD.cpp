/*
 * LCD.cpp
 *
 *  Created on: 02.10.2015
 *      Author: xasin
 */

#define NOP asm volatile ("nop")

#define RS 0
#define RW 1
#define EN 2
#define DATA 3

//LCD-Command to clear the display
#define CLEARDISP 	0b00000001
//LCD-Command to set the cursor home
#define CURSHOME	0b00000010
//LCD-Command to specify the move direction (1 = increment, 0 = decrement) and if the display should be shifted (1) or not (0).
#define CURSSHIFT(cURSSHIFTDIR, dISPFLUID) (0b00000100 | cURSSHIFTDIR<<1 | dISPFLUID)
//LCD-Command to turn display on/off, show the cursor and make it blink/static.
#define DISPMODE(dISPON, cURSON, cURSBLINK) (0b00001000 | dISPON<<2 | cURSON<<1 | cURSBLINK)
//LCD-Command to shift the display (1) or cursor (0) one right (1) or left (0).
#define SHIFTMODE(sHIFT, sHIFTDIR) (0b00010000 | sHIFT<<3 | sHIFTDIR<<2)
//LCD-Command to set up the display, specifying bitmode (1 == 8 bit, 0 == 4 bit), how many lines the display has (1 == 2 lines, 0 == 1) and if the characters are 5x10 (1) or 5x8 (0)
#define SETUP(bITMODE, lINES, fONTMODE) (0b00100000 | bITMODE<<4 | lINES<<3 | fONTMODE<<2)
//Data address for the first Line.
#define LCD_LINE1 0b00000000
//Data address for the second Line.
#define LCD_LINE2 0b01000000
//Command to set the LCD Memory address (character).
#define SETDDRAM(aDDRESS) (0b10000000 | (aDDRESS))


#include <avr/io.h>
#include <util/delay.h>

class LCD {
private:
	volatile uint8_t dispData[32];
	volatile uint8_t dispUpdate[4];

	volatile uint8_t *PORT;
	volatile uint8_t *PINP;
	volatile uint8_t *DDRP;

	//Push data, either a character or a command, to the LCD.
	void pushData(uint8_t msg, uint8_t controlBit) {
		//Write the first 4 bits of data to the display, the control bit, and enable.
		NOP;
		*PORT |= ((msg & 0b11110000)>>4 <<DATA | controlBit<<RS | 1<< EN);
		NOP;
		*PORT &= ~(1<< EN | 0b1111<< DATA);

		//Do the same with the last 4 bits.
		NOP;
		*PORT |= (1<< EN | (msg & 0b00001111) << DATA);
		NOP;
		*PORT &= ~(1<< EN | 0b1111<< DATA | 1<< RS);	//Reset the outputs.
	}

	//Read out if the LCD is busy. True for yes, false for not busy.
	uint8_t readBusy() {
		uint8_t temp = 0;
		*DDRP &= ~(0b1111 << DATA); 			//Set the data pins as inputs (for reading in the data.)

		*PORT |= (1<< RW);						//Enable read mode
		NOP;
		*PORT |= (1<< EN);						//Enable
		NOP;
		temp = (*PINP & (0b1000<< DATA));		//Read out the busy flag bit.
		*PORT &= ~(1<<EN);

		NOP;

		*PORT |= (1<<EN);						//Second enable (4 bit operation)
		NOP;
		*PORT &= ~(1<<EN | 1<< RW);

		*DDRP |= (0b1111 << DATA); 				//Set the pins back to output.
		if(temp == 0)
			return false;
		else
			return true;
	}

	void waitWhileBusy() {
		while(readBusy() == true) {
		}
	}

public:
	LCD(volatile uint8_t *P) {
		PORT = P;					//Define the pointer for the display port.
		DDRP = P -1;				//Get the Direction Register (port address -1)
		PINP = P -2;				//Get the Pin Register (port address -2)

		*DDRP |= (0b01111111);		//Set all those pins to outputs.

		*PORT |= (0b0010<< DATA | 1<< EN);	//Enable 4-Bit mode! (Has to be enabled only once.)
		NOP;
		*PORT &= ~(1<< EN | 0b1111<< DATA);	//Reset the inputs again.

		//General Display Setup
		waitWhileBusy();
		pushData(SETUP(0,1,0),0);		//4-Bit mode, 2 Lines, 5x8
		waitWhileBusy();
		pushData(DISPMODE(1,1,0),0);	//Enable Display, Cursor and Blink
		waitWhileBusy();
		pushData(CURSHOME,0);			//Set the cursor back to home pos.
	}

};
