EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:hw-cache
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
L D_Photo D1
U 1 1 5B1FA6E6
P 4350 4050
F 0 "D1" H 4370 4120 50  0000 L CNN
F 1 "D_Photo" H 4310 3940 50  0000 C CNN
F 2 "" H 4300 4050 50  0001 C CNN
F 3 "" H 4300 4050 50  0001 C CNN
	1    4350 4050
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR6
U 1 1 5B1FA767
P 4350 4150
F 0 "#PWR6" H 4350 3900 50  0001 C CNN
F 1 "GND" H 4350 4000 50  0000 C CNN
F 2 "" H 4350 4150 50  0001 C CNN
F 3 "" H 4350 4150 50  0001 C CNN
	1    4350 4150
	1    0    0    -1  
$EndComp
$Comp
L LM741 U1
U 1 1 5B1FA784
P 5100 3950
F 0 "U1" H 5100 4200 50  0000 L CNN
F 1 "LM741" H 5100 4100 50  0000 L CNN
F 2 "" H 5150 4000 50  0001 C CNN
F 3 "" H 5250 4100 50  0001 C CNN
	1    5100 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	4800 3850 4350 3850
$Comp
L GND #PWR7
U 1 1 5B1FA7F0
P 4800 4050
F 0 "#PWR7" H 4800 3800 50  0001 C CNN
F 1 "GND" H 4800 3900 50  0000 C CNN
F 2 "" H 4800 4050 50  0001 C CNN
F 3 "" H 4800 4050 50  0001 C CNN
	1    4800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3000 4800 3000
Wire Wire Line
	4800 3000 4800 3850
$Comp
L VDD #PWR9
U 1 1 5B1FA92D
P 5000 4250
F 0 "#PWR9" H 5000 4100 50  0001 C CNN
F 1 "VDD" H 5000 4400 50  0000 C CNN
F 2 "" H 5000 4250 50  0001 C CNN
F 3 "" H 5000 4250 50  0001 C CNN
	1    5000 4250
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR8
U 1 1 5B1FA96E
P 5000 3650
F 0 "#PWR8" H 5000 3500 50  0001 C CNN
F 1 "VSS" H 5000 3800 50  0000 C CNN
F 2 "" H 5000 3650 50  0001 C CNN
F 3 "" H 5000 3650 50  0001 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
NoConn ~ 5100 3650
NoConn ~ 5200 3650
$Comp
L C C1
U 1 1 5B1FA99E
P 5100 3000
F 0 "C1" H 5125 3100 50  0000 L CNN
F 1 "10pF" H 5125 2900 50  0000 L CNN
F 2 "" H 5138 2850 50  0001 C CNN
F 3 "" H 5100 3000 50  0001 C CNN
	1    5100 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3000 5250 3000
$Comp
L R R1
U 1 1 5B1FAB3C
P 5100 3250
F 0 "R1" V 5180 3250 50  0000 C CNN
F 1 "1M" V 5100 3250 50  0000 C CNN
F 2 "" V 5030 3250 50  0001 C CNN
F 3 "" H 5100 3250 50  0001 C CNN
	1    5100 3250
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5B1FABA9
P 5750 3950
F 0 "C2" H 5775 4050 50  0000 L CNN
F 1 "68nF" H 5775 3850 50  0000 L CNN
F 2 "" H 5788 3800 50  0001 C CNN
F 3 "" H 5750 3950 50  0001 C CNN
	1    5750 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3250 5400 3250
Connection ~ 5400 3250
Wire Wire Line
	4950 3250 4800 3250
Connection ~ 4800 3250
$Comp
L R R3
U 1 1 5B1FACFE
P 5900 4250
F 0 "R3" V 5980 4250 50  0000 C CNN
F 1 "100k" V 5900 4250 50  0000 C CNN
F 2 "" V 5830 4250 50  0001 C CNN
F 3 "" H 5900 4250 50  0001 C CNN
	1    5900 4250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B1FAD3F
P 5900 3650
F 0 "R2" V 5980 3650 50  0000 C CNN
F 1 "470k" V 5900 3650 50  0000 C CNN
F 2 "" V 5830 3650 50  0001 C CNN
F 3 "" H 5900 3650 50  0001 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3800 5900 4100
Connection ~ 5900 3950
Wire Wire Line
	5400 3000 5400 3950
Wire Wire Line
	5400 3950 5600 3950
$Comp
L GND #PWR11
U 1 1 5B1FAE43
P 5900 4400
F 0 "#PWR11" H 5900 4150 50  0001 C CNN
F 1 "GND" H 5900 4250 50  0000 C CNN
F 2 "" H 5900 4400 50  0001 C CNN
F 3 "" H 5900 4400 50  0001 C CNN
	1    5900 4400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B1FAE87
P 7200 3850
F 0 "R4" V 7280 3850 50  0000 C CNN
F 1 "10k" V 7200 3850 50  0000 C CNN
F 2 "" V 7130 3850 50  0001 C CNN
F 3 "" H 7200 3850 50  0001 C CNN
	1    7200 3850
	0    1    -1   0   
$EndComp
$Comp
L Conn_01x01 J1
U 1 1 5B1FAF58
P 7650 3850
F 0 "J1" H 7650 3950 50  0000 C CNN
F 1 "Conn_01x01" H 7650 3750 50  0000 C CNN
F 2 "" H 7650 3850 50  0001 C CNN
F 3 "" H 7650 3850 50  0001 C CNN
	1    7650 3850
	1    0    0    1   
$EndComp
Wire Notes Line
	4000 4600 4000 4950
Wire Notes Line
	4600 4950 4600 4600
Wire Notes Line
	5400 4950 5400 4600
Wire Notes Line
	6250 4950 6250 4600
Text Notes 4050 4800 0    60   ~ 0
photodiode
Text Notes 4650 4900 0    60   ~ 0
transimpedance\namplifier
Wire Wire Line
	7350 3850 7450 3850
Text Notes 6900 4900 0    60   ~ 0
overcurrent\nprotection
Text Notes 5450 4900 0    60   ~ 0
ac coupling\n2.5v polarization
$Comp
L VDD #PWR10
U 1 1 5B1FE63D
P 5900 3500
F 0 "#PWR10" H 5900 3350 50  0001 C CNN
F 1 "VDD" H 5900 3650 50  0000 C CNN
F 2 "" H 5900 3500 50  0001 C CNN
F 3 "" H 5900 3500 50  0001 C CNN
	1    5900 3500
	1    0    0    -1  
$EndComp
$Comp
L LM741 U2
U 1 1 5B210696
P 6500 3850
F 0 "U2" H 6500 4100 50  0000 L CNN
F 1 "LM741" H 6500 4000 50  0000 L CNN
F 2 "" H 6550 3900 50  0001 C CNN
F 3 "" H 6650 4000 50  0001 C CNN
	1    6500 3850
	1    0    0    1   
$EndComp
NoConn ~ 6500 3550
NoConn ~ 6600 3550
$Comp
L VDD #PWR13
U 1 1 5B21074C
P 6400 4150
F 0 "#PWR13" H 6400 4000 50  0001 C CNN
F 1 "VDD" H 6400 4300 50  0000 C CNN
F 2 "" H 6400 4150 50  0001 C CNN
F 3 "" H 6400 4150 50  0001 C CNN
	1    6400 4150
	1    0    0    1   
$EndComp
$Comp
L VSS #PWR12
U 1 1 5B210775
P 6400 3550
F 0 "#PWR12" H 6400 3400 50  0001 C CNN
F 1 "VSS" H 6400 3700 50  0000 C CNN
F 2 "" H 6400 3550 50  0001 C CNN
F 3 "" H 6400 3550 50  0001 C CNN
	1    6400 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 3750 6200 3350
Wire Wire Line
	6200 3350 6800 3350
Wire Wire Line
	6800 3350 6800 3850
Text Notes 6350 4900 0    60   ~ 0
voltage\nfollower
Wire Notes Line
	6800 4600 6800 4950
Wire Wire Line
	6800 3850 7050 3850
$Comp
L Conn_01x01 J2
U 1 1 5B23E51E
P 1550 3950
F 0 "J2" H 1550 4050 50  0000 C CNN
F 1 "Conn_01x01" H 1550 3850 50  0000 C CNN
F 2 "" H 1550 3950 50  0001 C CNN
F 3 "" H 1550 3950 50  0001 C CNN
	1    1550 3950
	-1   0    0    1   
$EndComp
$Comp
L LM741 U3
U 1 1 5B23E60B
P 2900 3850
F 0 "U3" H 2900 4100 50  0000 L CNN
F 1 "LM741" H 2900 4000 50  0000 L CNN
F 2 "" H 2950 3900 50  0001 C CNN
F 3 "" H 3050 4000 50  0001 C CNN
	1    2900 3850
	1    0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5B23E9B5
P 1900 3950
F 0 "R5" V 1980 3950 50  0000 C CNN
F 1 "10k" V 1900 3950 50  0000 C CNN
F 2 "" V 1830 3950 50  0001 C CNN
F 3 "" H 1900 3950 50  0001 C CNN
	1    1900 3950
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5B23EA42
P 2350 4100
F 0 "C3" H 2375 4200 50  0000 L CNN
F 1 "68nF" H 2375 4000 50  0000 L CNN
F 2 "" H 2388 3950 50  0001 C CNN
F 3 "" H 2350 4100 50  0001 C CNN
	1    2350 4100
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR4
U 1 1 5B23EAE2
P 2800 4150
F 0 "#PWR4" H 2800 4000 50  0001 C CNN
F 1 "VDD" H 2800 4300 50  0000 C CNN
F 2 "" H 2800 4150 50  0001 C CNN
F 3 "" H 2800 4150 50  0001 C CNN
	1    2800 4150
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR3
U 1 1 5B23EB17
P 2800 3550
F 0 "#PWR3" H 2800 3400 50  0001 C CNN
F 1 "VSS" H 2800 3700 50  0000 C CNN
F 2 "" H 2800 3550 50  0001 C CNN
F 3 "" H 2800 3550 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
NoConn ~ 2900 3550
NoConn ~ 3000 3550
$Comp
L LED D2
U 1 1 5B23EBD4
P 3700 4000
F 0 "D2" H 3700 4100 50  0000 C CNN
F 1 "LED" H 3700 3900 50  0000 C CNN
F 2 "" H 3700 4000 50  0001 C CNN
F 3 "" H 3700 4000 50  0001 C CNN
	1    3700 4000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR5
U 1 1 5B23EDBA
P 3700 4150
F 0 "#PWR5" H 3700 3900 50  0001 C CNN
F 1 "GND" H 3700 4000 50  0000 C CNN
F 2 "" H 3700 4150 50  0001 C CNN
F 3 "" H 3700 4150 50  0001 C CNN
	1    3700 4150
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5B23EE23
P 3350 3850
F 0 "R6" V 3430 3850 50  0000 C CNN
F 1 "1k5" V 3350 3850 50  0000 C CNN
F 2 "" V 3280 3850 50  0001 C CNN
F 3 "" H 3350 3850 50  0001 C CNN
	1    3350 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 3850 3700 3850
Wire Wire Line
	2600 3200 2600 3750
Wire Wire Line
	3200 3200 3200 3850
$Comp
L GND #PWR2
U 1 1 5B23EFB1
P 2350 4250
F 0 "#PWR2" H 2350 4000 50  0001 C CNN
F 1 "GND" H 2350 4100 50  0000 C CNN
F 2 "" H 2350 4250 50  0001 C CNN
F 3 "" H 2350 4250 50  0001 C CNN
	1    2350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3950 2600 3950
Connection ~ 2350 3950
Wire Wire Line
	6200 3950 5900 3950
$Comp
L R R8
U 1 1 5B2A5F28
P 2900 3200
F 0 "R8" V 2980 3200 50  0000 C CNN
F 1 "1k8" V 2900 3200 50  0000 C CNN
F 2 "" V 2830 3200 50  0001 C CNN
F 3 "" H 2900 3200 50  0001 C CNN
	1    2900 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 3200 2750 3200
Wire Wire Line
	3050 3200 3200 3200
$Comp
L R R7
U 1 1 5B2A6453
P 2350 3200
F 0 "R7" V 2430 3200 50  0000 C CNN
F 1 "1k" V 2350 3200 50  0000 C CNN
F 2 "" V 2280 3200 50  0001 C CNN
F 3 "" H 2350 3200 50  0001 C CNN
	1    2350 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1
U 1 1 5B2A64B5
P 2150 3250
F 0 "#PWR1" H 2150 3000 50  0001 C CNN
F 1 "GND" H 2150 3100 50  0000 C CNN
F 2 "" H 2150 3250 50  0001 C CNN
F 3 "" H 2150 3250 50  0001 C CNN
	1    2150 3250
	1    0    0    -1  
$EndComp
Connection ~ 2600 3200
Wire Wire Line
	2200 3200 2150 3200
Wire Wire Line
	2150 3200 2150 3250
Wire Notes Line
	3200 4600 3200 4950
Wire Notes Line
	2450 4600 2450 4950
Text Notes 3550 4800 0    60   ~ 0
LED
Text Notes 1650 4800 0    60   ~ 0
low pass filter
Text Notes 2650 4800 0    60   ~ 0
amplifier
$EndSCHEMATC
