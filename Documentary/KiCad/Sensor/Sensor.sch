EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA8-P IC?
U 1 1 56D4A960
P 2450 2500
F 0 "IC?" H 1700 3800 50  0000 L BNN
F 1 "ATMEGA8-P" H 2950 1050 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 2450 2500 50  0001 C CIN
F 3 "" H 2450 2500 50  0000 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X02 P?
U 1 1 56D4AD88
P 4950 3850
F 0 "P?" H 4950 4000 50  0000 C CNN
F 1 "CONN_02X02" H 4950 3700 50  0000 C CNN
F 2 "" H 4950 2650 50  0000 C CNN
F 3 "" H 4950 2650 50  0000 C CNN
	1    4950 3850
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y?
U 1 1 56D4B09D
P 1150 2150
F 0 "Y?" H 1150 2300 50  0000 C CNN
F 1 "Crystal" H 1150 2000 50  0000 C CNN
F 2 "" H 1150 2150 50  0000 C CNN
F 3 "" H 1150 2150 50  0000 C CNN
	1    1150 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1000 2300 1550 2300
Wire Wire Line
	1550 2000 1550 2100
Wire Wire Line
	1000 2000 1550 2000
$Comp
L C_Small C?
U 1 1 56D4B381
P 900 2000
F 0 "C?" H 910 2070 50  0000 L CNN
F 1 "C_Small" H 910 1920 50  0000 L CNN
F 2 "" H 900 2000 50  0000 C CNN
F 3 "" H 900 2000 50  0000 C CNN
	1    900  2000
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C?
U 1 1 56D4B3CA
P 900 2300
F 0 "C?" H 910 2370 50  0000 L CNN
F 1 "C_Small" H 910 2220 50  0000 L CNN
F 2 "" H 900 2300 50  0000 C CNN
F 3 "" H 900 2300 50  0000 C CNN
	1    900  2300
	0    1    1    0   
$EndComp
Connection ~ 1150 2300
Connection ~ 1150 2000
Wire Wire Line
	800  2000 800  2300
Wire Wire Line
	800  2250 700  2250
Wire Wire Line
	700  2250 700  2350
Connection ~ 800  2250
$Comp
L GND #PWR?
U 1 1 56D4B48E
P 700 2350
F 0 "#PWR?" H 700 2100 50  0001 C CNN
F 1 "GND" H 700 2200 50  0000 C CNN
F 2 "" H 700 2350 50  0000 C CNN
F 3 "" H 700 2350 50  0000 C CNN
	1    700  2350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56D4B682
P 2450 1000
F 0 "#PWR?" H 2450 850 50  0001 C CNN
F 1 "+5V" H 2450 1140 50  0000 C CNN
F 2 "" H 2450 1000 50  0000 C CNN
F 3 "" H 2450 1000 50  0000 C CNN
	1    2450 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56D4B7EA
P 2450 4000
F 0 "#PWR?" H 2450 3750 50  0001 C CNN
F 1 "GND" H 2450 3850 50  0000 C CNN
F 2 "" H 2450 4000 50  0000 C CNN
F 3 "" H 2450 4000 50  0000 C CNN
	1    2450 4000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56D4B952
P 1350 1400
F 0 "R?" V 1430 1400 50  0000 C CNN
F 1 "R" V 1350 1400 50  0000 C CNN
F 2 "" V 1280 1400 50  0000 C CNN
F 3 "" H 1350 1400 50  0000 C CNN
	1    1350 1400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56D4BBF1
P 1550 1800
F 0 "#PWR?" H 1550 1550 50  0001 C CNN
F 1 "GND" H 1550 1650 50  0000 C CNN
F 2 "" H 1550 1800 50  0000 C CNN
F 3 "" H 1550 1800 50  0000 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1400 1550 1400
Wire Wire Line
	2450 1000 2450 1100
Wire Wire Line
	1200 1050 1200 1700
Wire Wire Line
	1200 1050 2450 1050
Connection ~ 2450 1050
Wire Wire Line
	1200 1600 1550 1600
Connection ~ 1200 1400
Wire Wire Line
	1200 1700 1550 1700
Connection ~ 1200 1600
$Comp
L GND #PWR?
U 1 1 56D4CCF8
P 4650 4000
F 0 "#PWR?" H 4650 3750 50  0001 C CNN
F 1 "GND" H 4650 3850 50  0000 C CNN
F 2 "" H 4650 4000 50  0000 C CNN
F 3 "" H 4650 4000 50  0000 C CNN
	1    4650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4000 4650 3800
Wire Wire Line
	4650 3800 4700 3800
$Comp
L +5V #PWR?
U 1 1 56D4CD62
P 5200 3700
F 0 "#PWR?" H 5200 3550 50  0001 C CNN
F 1 "+5V" H 5200 3840 50  0000 C CNN
F 2 "" H 5200 3700 50  0000 C CNN
F 3 "" H 5200 3700 50  0000 C CNN
	1    5200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3700 5200 3800
Wire Wire Line
	4700 3900 4500 3900
Wire Wire Line
	5200 3900 5350 3900
$Comp
L CONN_02X03 SPI1
U 1 1 56D4D1B5
P 4950 900
F 0 "SPI1" H 4950 1100 50  0000 C CNN
F 1 "CONN_02X03" H 4950 700 50  0000 C CNN
F 2 "" H 4950 -300 50  0000 C CNN
F 3 "" H 4950 -300 50  0000 C CNN
	1    4950 900 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56D4D669
P 5300 700
F 0 "#PWR?" H 5300 550 50  0001 C CNN
F 1 "+5V" H 5300 840 50  0000 C CNN
F 2 "" H 5300 700 50  0000 C CNN
F 3 "" H 5300 700 50  0000 C CNN
	1    5300 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56D4D6E6
P 5300 1100
F 0 "#PWR?" H 5300 850 50  0001 C CNN
F 1 "GND" H 5300 950 50  0000 C CNN
F 2 "" H 5300 1100 50  0000 C CNN
F 3 "" H 5300 1100 50  0000 C CNN
	1    5300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1000 5300 1000
Wire Wire Line
	5300 1000 5300 1100
Wire Wire Line
	5200 800  5300 800 
Wire Wire Line
	5300 800  5300 700 
Wire Bus Line
	3700 1500 3700 3600
Entry Wire Line
	3600 2500 3700 2600
Entry Wire Line
	3600 2600 3700 2700
Wire Wire Line
	3450 2500 3600 2500
Wire Wire Line
	3450 2600 3600 2600
Text Label 3450 2500 0    60   ~ 0
SDA
Text Label 3450 2600 0    60   ~ 0
SCL
Entry Wire Line
	5250 3400 5350 3500
Entry Wire Line
	4400 3400 4500 3500
Wire Wire Line
	4500 3900 4500 3500
Wire Wire Line
	5350 3900 5350 3500
Text Label 5350 3650 0    60   ~ 0
SCL
Text Label 4500 3650 0    60   ~ 0
SDA
Wire Bus Line
	3700 3400 5250 3400
Wire Wire Line
	5200 900  5400 900 
Text Label 5200 900  0    60   ~ 0
MOSI
Text Label 4450 800  0    60   ~ 0
MISO
Text Label 4450 900  0    60   ~ 0
SCK
Text Label 4450 1000 0    60   ~ 0
RST
Wire Wire Line
	4700 1000 4450 1000
Wire Wire Line
	4700 900  4450 900 
Wire Wire Line
	4700 800  4450 800 
Entry Wire Line
	5400 900  5500 1000
Entry Wire Line
	4350 1100 4450 1000
Entry Wire Line
	4350 1000 4450 900 
Entry Wire Line
	4350 900  4450 800 
Wire Bus Line
	5500 1000 5500 1350
Wire Bus Line
	5500 1350 4350 1350
Wire Bus Line
	4350 1350 4350 900 
Wire Bus Line
	4400 1350 4400 1500
Wire Bus Line
	4400 1500 3700 1500
Entry Wire Line
	3600 1800 3700 1700
Entry Wire Line
	3600 1900 3700 1800
Entry Wire Line
	3600 1700 3700 1600
Wire Wire Line
	3450 1700 3600 1700
Wire Wire Line
	3450 1800 3600 1800
Wire Wire Line
	3450 1900 3600 1900
Wire Wire Line
	1200 1500 1000 1500
Wire Wire Line
	1000 1500 1000 750 
Wire Wire Line
	1000 750  3700 750 
Wire Wire Line
	3700 750  3700 1000
Wire Wire Line
	3700 1000 4250 1000
Connection ~ 1200 1500
Entry Wire Line
	4250 1000 4350 1100
Text Label 1000 1500 0    60   ~ 0
RST
$EndSCHEMATC
