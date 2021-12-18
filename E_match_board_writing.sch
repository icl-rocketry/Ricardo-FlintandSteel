EESchema Schematic File Version 4
EELAYER 30 0
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
L power:+3.3V #PWR020
U 1 1 5DA60792
P 5850 2700
F 0 "#PWR020" H 5850 2550 50  0001 C CNN
F 1 "+3.3V" H 5865 2873 50  0000 C CNN
F 2 "" H 5850 2700 50  0001 C CNN
F 3 "" H 5850 2700 50  0001 C CNN
	1    5850 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5DA6E370
P 2400 6200
F 0 "#PWR06" H 2400 6050 50  0001 C CNN
F 1 "+3.3V" H 2415 6373 50  0000 C CNN
F 2 "" H 2400 6200 50  0001 C CNN
F 3 "" H 2400 6200 50  0001 C CNN
	1    2400 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5DA6FF9D
P 2400 6400
F 0 "R7" H 2459 6446 50  0000 L CNN
F 1 "10K" H 2459 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2400 6400 50  0001 C CNN
F 3 "~" H 2400 6400 50  0001 C CNN
	1    2400 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DA70D8A
P 2100 6550
F 0 "C2" V 1871 6550 50  0000 C CNN
F 1 "1uF" V 1962 6550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2100 6550 50  0001 C CNN
F 3 "~" H 2100 6550 50  0001 C CNN
	1    2100 6550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DA7199D
P 1850 6550
F 0 "#PWR03" H 1850 6300 50  0001 C CNN
F 1 "GND" H 1855 6377 50  0000 C CNN
F 2 "" H 1850 6550 50  0001 C CNN
F 3 "" H 1850 6550 50  0001 C CNN
	1    1850 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6550 2000 6550
Text Notes 5400 5600 0    50   ~ 0
MainBoard\n
Text Notes 10600 7700 0    50   ~ 0
0.1\n\n
Wire Wire Line
	5050 2950 5250 2950
Text Label 5050 2950 0    50   ~ 0
EN
Text Label 2750 6550 2    50   ~ 0
EN
$Comp
L power:+3.3V #PWR09
U 1 1 5DAB272A
P 2300 7250
F 0 "#PWR09" H 2300 7100 50  0001 C CNN
F 1 "+3.3V" H 2315 7423 50  0000 C CNN
F 2 "" H 2300 7250 50  0001 C CNN
F 3 "" H 2300 7250 50  0001 C CNN
	1    2300 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DAB55F6
P 600 7500
F 0 "#PWR07" H 600 7250 50  0001 C CNN
F 1 "GND" H 605 7327 50  0000 C CNN
F 2 "" H 600 7500 50  0001 C CNN
F 3 "" H 600 7500 50  0001 C CNN
	1    600  7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DAB5946
P 950 7450
F 0 "C3" V 721 7450 50  0000 C CNN
F 1 "1nF" V 812 7450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 950 7450 50  0001 C CNN
F 3 "~" H 950 7450 50  0001 C CNN
	1    950  7450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5DAB6448
P 1400 7250
F 0 "R9" V 1204 7250 50  0000 C CNN
F 1 "470" V 1295 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1400 7250 50  0001 C CNN
F 3 "~" H 1400 7250 50  0001 C CNN
	1    1400 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	600  7250 600  7450
Wire Wire Line
	850  7450 600  7450
Connection ~ 600  7450
Wire Wire Line
	600  7450 600  7500
Wire Wire Line
	1050 7450 1300 7450
Wire Wire Line
	1300 7450 1300 7250
Connection ~ 1300 7250
Wire Wire Line
	1700 7250 1500 7250
Text Label 1700 7250 2    50   ~ 0
BOOT
$Comp
L power:GND #PWR02
U 1 1 5DABBFE1
P 650 6550
F 0 "#PWR02" H 650 6300 50  0001 C CNN
F 1 "GND" H 655 6377 50  0000 C CNN
F 2 "" H 650 6550 50  0001 C CNN
F 3 "" H 650 6550 50  0001 C CNN
	1    650  6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DABBFE7
P 1000 6500
F 0 "C1" V 771 6500 50  0000 C CNN
F 1 "1nF" V 862 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 6500 50  0001 C CNN
F 3 "~" H 1000 6500 50  0001 C CNN
	1    1000 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5DABBFED
P 1450 6300
F 0 "R5" V 1254 6300 50  0000 C CNN
F 1 "470" V 1345 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1450 6300 50  0001 C CNN
F 3 "~" H 1450 6300 50  0001 C CNN
	1    1450 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	650  6300 650  6500
Wire Wire Line
	900  6500 650  6500
Connection ~ 650  6500
Wire Wire Line
	650  6500 650  6550
Wire Wire Line
	1100 6500 1350 6500
Wire Wire Line
	1350 6500 1350 6300
Connection ~ 1350 6300
Wire Wire Line
	1750 6300 1550 6300
Text Label 1750 6300 2    50   ~ 0
EN
$Comp
L Device:LED_Small D3
U 1 1 5DB110D6
P 900 1250
F 0 "D3" H 900 1045 50  0000 C CNN
F 1 "TX_LED" H 900 1136 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 900 1250 50  0001 C CNN
F 3 "~" V 900 1250 50  0001 C CNN
	1    900  1250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5DB13286
P 900 900
F 0 "D2" H 900 695 50  0000 C CNN
F 1 "RX_LED" H 900 786 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 900 900 50  0001 C CNN
F 3 "~" V 900 900 50  0001 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5DB4A6E6
P 1200 900
F 0 "R10" V 1004 900 50  0000 C CNN
F 1 "470" V 1095 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1200 900 50  0001 C CNN
F 3 "~" H 1200 900 50  0001 C CNN
	1    1200 900 
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5DB4B3E7
P 1200 1250
F 0 "R11" V 1004 1250 50  0000 C CNN
F 1 "470" V 1095 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1200 1250 50  0001 C CNN
F 3 "~" H 1200 1250 50  0001 C CNN
	1    1200 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 1250 1100 1250
Wire Wire Line
	1000 900  1100 900 
$Comp
L power:GND #PWR012
U 1 1 5DB5396A
P 2200 1650
F 0 "#PWR012" H 2200 1400 50  0001 C CNN
F 1 "GND" H 2205 1477 50  0000 C CNN
F 2 "" H 2200 1650 50  0001 C CNN
F 3 "" H 2200 1650 50  0001 C CNN
	1    2200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6550 2400 6550
Wire Wire Line
	2400 6550 2400 6500
Connection ~ 2400 6550
Wire Wire Line
	2400 6550 2750 6550
Wire Wire Line
	2400 6200 2400 6300
Wire Wire Line
	1500 4950 1500 4900
Wire Wire Line
	1500 4900 1950 4900
Wire Wire Line
	1500 5900 1500 5950
Wire Wire Line
	1500 5950 1950 5950
$Comp
L Device:R_Small R1
U 1 1 5DB9F807
P 950 5150
F 0 "R1" V 754 5150 50  0000 C CNN
F 1 "10K" V 845 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 950 5150 50  0001 C CNN
F 3 "~" H 950 5150 50  0001 C CNN
	1    950  5150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5DBA0737
P 950 5700
F 0 "R2" V 754 5700 50  0000 C CNN
F 1 "10K" V 845 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 950 5700 50  0001 C CNN
F 3 "~" H 950 5700 50  0001 C CNN
	1    950  5700
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 5700 1200 5700
Wire Wire Line
	1200 5150 1050 5150
Wire Wire Line
	850  5700 800  5700
Wire Wire Line
	850  5150 750  5150
Wire Wire Line
	800  5700 800  5350
Wire Wire Line
	800  5350 1500 5350
Connection ~ 800  5700
Wire Wire Line
	800  5700 650  5700
Wire Wire Line
	750  5150 750  5500
Wire Wire Line
	750  5500 1500 5500
Connection ~ 750  5150
Wire Wire Line
	750  5150 650  5150
Text Label 650  5150 0    50   ~ 0
DTR
Text Label 650  5700 0    50   ~ 0
RTS
Text Label 1950 4900 2    50   ~ 0
EN
Text Label 1950 5950 2    50   ~ 0
BOOT
$Comp
L power:+3.3V #PWR011
U 1 1 5DC16656
P 1450 900
F 0 "#PWR011" H 1450 750 50  0001 C CNN
F 1 "+3.3V" H 1465 1073 50  0000 C CNN
F 2 "" H 1450 900 50  0001 C CNN
F 3 "" H 1450 900 50  0001 C CNN
	1    1450 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 5DC1F7E5
P 2050 900
F 0 "D6" H 2050 695 50  0000 C CNN
F 1 "PWR_LED" H 2050 786 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 2050 900 50  0001 C CNN
F 3 "~" V 2050 900 50  0001 C CNN
	1    2050 900 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5DC1F7EB
P 1750 900
F 0 "R14" V 1554 900 50  0000 C CNN
F 1 "470" V 1645 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1750 900 50  0001 C CNN
F 3 "~" H 1750 900 50  0001 C CNN
	1    1750 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 900  1950 900 
Wire Wire Line
	1450 900  1650 900 
Wire Wire Line
	2200 900  2150 900 
$Comp
L RF_Module:ESP32-WROOM-32 U3
U 1 1 5DA5F4C7
P 5850 4150
F 0 "U3" H 4950 5700 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 5300 5600 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5850 2650 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 5550 4200 50  0001 C CNN
	1    5850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 900  2200 1650
Wire Wire Line
	1300 900  1450 900 
Connection ~ 1450 900 
Wire Wire Line
	1300 900  1300 1250
Connection ~ 1300 900 
Wire Wire Line
	4800 3150 4800 3050
Wire Wire Line
	4800 3150 4800 3250
Connection ~ 4800 3150
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5DFF606F
P 1050 6100
F 0 "J9" V 1112 6144 50  0000 L CNN
F 1 "Conn_01x02_Male" V 1203 6144 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1050 6100 50  0001 C CNN
F 3 "~" H 1050 6100 50  0001 C CNN
	1    1050 6100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 5DFF8440
P 1000 7050
F 0 "J10" V 1062 7094 50  0000 L CNN
F 1 "Conn_01x02_Male" V 1153 7094 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1000 7050 50  0001 C CNN
F 3 "~" H 1000 7050 50  0001 C CNN
	1    1000 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	650  6300 950  6300
Wire Wire Line
	1050 6300 1350 6300
Wire Wire Line
	600  7250 900  7250
Wire Wire Line
	1000 7250 1300 7250
$Comp
L power:VDD #PWR016
U 1 1 5DC7CCF8
P 4400 3050
F 0 "#PWR016" H 4400 2900 50  0001 C CNN
F 1 "VDD" H 4417 3223 50  0000 C CNN
F 2 "" H 4400 3050 50  0001 C CNN
F 3 "" H 4400 3050 50  0001 C CNN
	1    4400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3050 4500 3050
Wire Wire Line
	4400 3250 4500 3250
Wire Wire Line
	4400 3300 4400 3250
$Comp
L power:GND #PWR017
U 1 1 5DC615DF
P 4400 3300
F 0 "#PWR017" H 4400 3050 50  0001 C CNN
F 1 "GND" H 4405 3127 50  0000 C CNN
F 2 "" H 4400 3300 50  0001 C CNN
F 3 "" H 4400 3300 50  0001 C CNN
	1    4400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3250 4700 3250
Wire Wire Line
	4800 3050 4700 3050
$Comp
L Device:R_Small R17
U 1 1 5DC08F93
P 4600 3250
F 0 "R17" V 4796 3250 50  0000 C CNN
F 1 "10K" V 4705 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 3250 50  0001 C CNN
F 3 "~" H 4600 3250 50  0001 C CNN
	1    4600 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5DC08487
P 4600 3050
F 0 "R16" V 4796 3050 50  0000 C CNN
F 1 "10K" V 4705 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 3050 50  0001 C CNN
F 3 "~" H 4600 3050 50  0001 C CNN
	1    4600 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 3150 5250 3150
Text Label 4900 3250 0    50   ~ 0
LORA_INT
Wire Wire Line
	4900 3250 5250 3250
NoConn ~ 5250 4150
NoConn ~ 5250 4250
NoConn ~ 5250 4350
NoConn ~ 5250 4450
NoConn ~ 5250 4550
NoConn ~ 5250 4650
$Comp
L Transistor_BJT:MMDT2222A Q1
U 1 1 5E4F19D5
P 1400 5150
F 0 "Q1" H 1590 5196 50  0000 L CNN
F 1 "MMDT2222A" H 1590 5105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1600 5250 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 1400 5150 50  0001 C CNN
	1    1400 5150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q1
U 2 1 5E4F3D62
P 1400 5700
F 0 "Q1" H 1590 5746 50  0000 L CNN
F 1 "MMDT2222A" H 1590 5655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1600 5800 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 1400 5700 50  0001 C CNN
	2    1400 5700
	1    0    0    1   
$EndComp
Text Notes 2200 2150 0    50   ~ 0
This set of LEDs indicate whether the \nSerial Flash Memory\n\n
Wire Notes Line
	700  550  700  2250
$Comp
L power:VDD #PWR053
U 1 1 5E668CEC
P 1950 2750
F 0 "#PWR053" H 1950 2600 50  0001 C CNN
F 1 "VDD" H 1967 2923 50  0000 C CNN
F 2 "" H 1950 2750 50  0001 C CNN
F 3 "" H 1950 2750 50  0001 C CNN
	1    1950 2750
	1    0    0    -1  
$EndComp
Connection ~ 1950 3050
$Comp
L Device:D_Schottky D9
U 1 1 5E667A26
P 1950 2900
F 0 "D9" V 1904 2979 50  0000 L CNN
F 1 "D_Schottky" V 1995 2979 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 1950 2900 50  0001 C CNN
F 3 "~" H 1950 2900 50  0001 C CNN
	1    1950 2900
	0    1    1    0   
$EndComp
Connection ~ 2500 4200
Wire Wire Line
	2500 4400 2500 4200
Wire Wire Line
	2400 4400 2400 4300
NoConn ~ 3900 3200
NoConn ~ 3900 3300
NoConn ~ 3900 3700
NoConn ~ 3900 3900
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U1
U 1 1 5DABCA8E
P 3300 3800
F 0 "U1" H 3300 4881 50  0000 C CNN
F 1 "CP2102N-A01-GQFN24" H 3300 4790 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm_ThermalVias" H 3750 3000 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 3350 2750 50  0001 C CNN
	1    3300 3800
	1    0    0    -1  
$EndComp
Connection ~ 3400 4700
Wire Wire Line
	1950 3050 2150 3050
Wire Wire Line
	1950 4000 1950 3050
Wire Wire Line
	1950 4000 2200 4000
$Comp
L Device:R_Small R3
U 1 1 5DAEAED8
P 2150 3150
F 0 "R3" H 2209 3196 50  0000 L CNN
F 1 "22K" H 2209 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2150 3150 50  0001 C CNN
F 3 "~" H 2150 3150 50  0001 C CNN
	1    2150 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5DAEB42F
P 2150 3450
F 0 "R4" H 2209 3496 50  0000 L CNN
F 1 "43K" H 2209 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2150 3450 50  0001 C CNN
F 3 "~" H 2150 3450 50  0001 C CNN
	1    2150 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DC01586
P 2400 4800
F 0 "#PWR05" H 2400 4550 50  0001 C CNN
F 1 "GND" H 2405 4627 50  0000 C CNN
F 2 "" H 2400 4800 50  0001 C CNN
F 3 "" H 2400 4800 50  0001 C CNN
	1    2400 4800
	1    0    0    -1  
$EndComp
Connection ~ 2300 3800
Wire Wire Line
	2300 4400 2300 3800
$Comp
L Power_Protection:SP0503BAHT D1
U 1 1 5DBEFF1C
P 2400 4600
F 0 "D1" H 2605 4646 50  0000 L CNN
F 1 "SP0503BAHT" H 2605 4555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2625 4550 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 2525 4725 50  0001 C CNN
	1    2400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3800 2300 3800
Wire Wire Line
	2650 3200 2700 3200
Wire Wire Line
	2650 3100 2650 3200
Wire Wire Line
	2650 2900 3200 2900
$Comp
L Device:R_Small R6
U 1 1 5DBC28E4
P 2650 3000
F 0 "R6" H 2709 3046 50  0000 L CNN
F 1 "1K" H 2709 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2650 3000 50  0001 C CNN
F 3 "~" H 2650 3000 50  0001 C CNN
	1    2650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4700 3300 4700
Wire Wire Line
	3400 4800 3400 4700
$Comp
L power:GND #PWR010
U 1 1 5DB188B7
P 3400 4800
F 0 "#PWR010" H 3400 4550 50  0001 C CNN
F 1 "GND" H 3405 4627 50  0000 C CNN
F 2 "" H 3400 4800 50  0001 C CNN
F 3 "" H 3400 4800 50  0001 C CNN
	1    3400 4800
	1    0    0    -1  
$EndComp
Connection ~ 3200 2900
Wire Wire Line
	3200 2900 3300 2900
Wire Wire Line
	3200 2800 3200 2900
$Comp
L power:+3.3V #PWR08
U 1 1 5DAEFF21
P 3200 2800
F 0 "#PWR08" H 3200 2650 50  0001 C CNN
F 1 "+3.3V" H 3215 2973 50  0000 C CNN
F 2 "" H 3200 2800 50  0001 C CNN
F 3 "" H 3200 2800 50  0001 C CNN
	1    3200 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DAEED0E
P 2150 3550
F 0 "#PWR04" H 2150 3300 50  0001 C CNN
F 1 "GND" H 2155 3377 50  0000 C CNN
F 2 "" H 2150 3550 50  0001 C CNN
F 3 "" H 2150 3550 50  0001 C CNN
	1    2150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3300 2150 3250
Connection ~ 2150 3300
Wire Wire Line
	2150 3350 2150 3300
Wire Wire Line
	2450 3300 2150 3300
Wire Wire Line
	2450 4100 2450 3300
Wire Wire Line
	2200 4000 2200 3800
NoConn ~ 2550 3600
NoConn ~ 2550 3500
NoConn ~ 3900 4400
NoConn ~ 3900 4300
NoConn ~ 3900 4200
NoConn ~ 3900 4100
$Comp
L power:+3.3V #PWR013
U 1 1 5DBECF96
P 4250 4900
F 0 "#PWR013" H 4250 4750 50  0001 C CNN
F 1 "+3.3V" H 4265 5073 50  0000 C CNN
F 2 "" H 4250 4900 50  0001 C CNN
F 3 "" H 4250 4900 50  0001 C CNN
	1    4250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4900 4250 5150
Wire Wire Line
	3400 5350 3850 5350
NoConn ~ 3850 5550
$Comp
L Interface_CAN_LIN:SN65HVD230 U2
U 1 1 5DBD91FC
P 4250 5450
F 0 "U2" H 4250 5931 50  0000 C CNN
F 1 "SN65HVD230" H 4250 5840 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4250 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 4150 5850 50  0001 C CNN
	1    4250 5450
	1    0    0    -1  
$EndComp
Text Label 5100 5450 2    50   ~ 0
CAN_HIGH
Text Label 5100 5550 2    50   ~ 0
CAN_LOW
$Comp
L power:GND #PWR014
U 1 1 5DBF5BA5
P 4250 6000
F 0 "#PWR014" H 4250 5750 50  0001 C CNN
F 1 "GND" H 4255 5827 50  0000 C CNN
F 2 "" H 4250 6000 50  0001 C CNN
F 3 "" H 4250 6000 50  0001 C CNN
	1    4250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6000 4250 5950
Text Label 3400 5350 0    50   ~ 0
CAN_TX
Text Label 3400 5450 0    50   ~ 0
CAN_RX
Wire Wire Line
	3850 5650 3850 5950
Wire Wire Line
	3850 5950 4250 5950
Connection ~ 4250 5950
Wire Wire Line
	4250 5950 4250 5850
Wire Wire Line
	2700 3500 2550 3500
Wire Wire Line
	2700 3600 2550 3600
Wire Wire Line
	2300 3800 2700 3800
Wire Wire Line
	2450 4100 2700 4100
Wire Wire Line
	2500 4200 2700 4200
Wire Wire Line
	2400 4300 2700 4300
Wire Wire Line
	4650 5450 5100 5450
Wire Wire Line
	4650 5550 5100 5550
Wire Wire Line
	5850 5550 5850 5600
Text Notes 4150 2500 0    50   ~ 0
Wi-Fi+BT+BLE MCU module\n32-bit LX6 MCU
Wire Wire Line
	5850 2700 5850 2750
$Comp
L power:GND #PWR021
U 1 1 5DA6110D
P 5850 5600
F 0 "#PWR021" H 5850 5350 50  0001 C CNN
F 1 "GND" H 5850 5450 50  0000 C CNN
F 2 "" H 5850 5600 50  0001 C CNN
F 3 "" H 5850 5600 50  0001 C CNN
	1    5850 5600
	1    0    0    -1  
$EndComp
Text Notes 7050 7100 0    50   ~ 0
This PCB employs modular design 240V AC wokring voltage \nAll the units are put in this style to provide space for further elements\n* Note this is the preliminary arrangement, and will be amended when necessary for actual purpose.\n* Note the capacitors in this chart are menat to be put together \nto avoid chaos, and will be linked to corresponding \nelements where proper
Wire Notes Line rgb(255, 0, 0)
	6950 7700 6950 6500
Text Notes 9900 700  0    50   ~ 0
* Further components go here
Wire Wire Line
	1800 2850 1800 3050
Wire Wire Line
	1800 3050 1950 3050
Wire Wire Line
	1800 4200 2500 4200
Wire Notes Line
	550  2450 3950 2450
Wire Notes Line rgb(255, 0, 0)
	11150 550  11150 6500
Wire Notes Line rgb(255, 0, 0)
	6950 6500 11150 6500
NoConn ~ 3900 3800
NoConn ~ 3900 3400
Wire Wire Line
	1600 3000 1650 3000
Wire Wire Line
	1650 3000 1650 2850
Wire Wire Line
	1650 2850 1800 2850
NoConn ~ 1600 4100
NoConn ~ 1600 4200
Wire Wire Line
	1600 3700 1800 3700
Wire Wire Line
	1800 3700 1800 3800
Wire Wire Line
	1600 3800 1800 3800
Connection ~ 1800 3800
Wire Wire Line
	1800 3800 1800 4200
Wire Wire Line
	1600 3500 1700 3500
Wire Wire Line
	1700 3500 1700 3600
Wire Wire Line
	1700 4300 2400 4300
Connection ~ 2400 4300
Wire Wire Line
	1600 3600 1700 3600
Connection ~ 1700 3600
Wire Wire Line
	1700 3600 1700 4300
Wire Wire Line
	1600 3200 1700 3200
Wire Wire Line
	1700 3200 1700 3300
Wire Wire Line
	1700 3300 1600 3300
$Comp
L Device:R R_CC
U 1 1 6196D955
P 1800 3300
F 0 "R_CC" H 1870 3346 50  0000 L CNN
F 1 "5.1k" H 1870 3255 50  0000 L CNN
F 2 "" V 1730 3300 50  0001 C CNN
F 3 "~" H 1800 3300 50  0001 C CNN
	1    1800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3200 1700 3150
Wire Wire Line
	1700 3150 1800 3150
Connection ~ 1700 3200
$Comp
L power:GND #PWR?
U 1 1 619762BF
P 1800 3500
F 0 "#PWR?" H 1800 3250 50  0001 C CNN
F 1 "GND" H 1805 3327 50  0000 C CNN
F 2 "" H 1800 3500 50  0001 C CNN
F 3 "" H 1800 3500 50  0001 C CNN
	1    1800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3450 1800 3500
Text Notes 3250 3500 0    28   ~ 0
UART Receive
Text Notes 3250 3600 0    28   ~ 0
UART Transmit
Text Label 6600 3050 0    50   ~ 0
RXD
Wire Wire Line
	6450 3050 6600 3050
Text Label 6600 3250 0    50   ~ 0
TXD
Wire Wire Line
	6450 3250 6600 3250
Text Label 4050 3600 0    50   ~ 0
RXD
Wire Wire Line
	3900 3600 4050 3600
Text Label 4050 3500 0    50   ~ 0
TXD
Wire Wire Line
	3900 3500 4050 3500
Wire Notes Line
	550  2450 550  5650
Text Label 6600 2950 0    50   ~ 0
BOOT
Wire Wire Line
	6450 2950 6600 2950
Wire Notes Line
	6800 2250 6800 550 
Wire Notes Line
	700  550  6800 550 
Wire Notes Line
	700  2250 6800 2250
Wire Wire Line
	3850 5450 3400 5450
Wire Notes Line
	6800 5800 6800 2300
Wire Notes Line
	4000 2300 6800 2300
Wire Notes Line rgb(255, 0, 0)
	6900 550  6900 5900
Wire Notes Line rgb(255, 0, 0)
	4900 7700 6950 7700
Wire Notes Line rgb(255, 0, 0)
	6900 550  11150 550 
$Comp
L Device:R E-match
U 1 1 61BEABD4
P 8300 1100
F 0 "E-match" V 8093 1100 50  0000 C CNN
F 1 "R" V 8184 1100 50  0000 C CNN
F 2 "" V 8230 1100 50  0001 C CNN
F 3 "~" H 8300 1100 50  0001 C CNN
	1    8300 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61BF1CC5
P 8800 950
F 0 "R?" H 8870 996 50  0000 L CNN
F 1 "1k" H 8870 905 50  0000 L CNN
F 2 "" V 8730 950 50  0001 C CNN
F 3 "~" H 8800 950 50  0001 C CNN
	1    8800 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61BF7529
P 7400 1800
F 0 "R?" H 7470 1846 50  0000 L CNN
F 1 "10k" H 7470 1755 50  0000 L CNN
F 2 "" V 7330 1800 50  0001 C CNN
F 3 "~" H 7400 1800 50  0001 C CNN
	1    7400 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C01AB1
P 7200 1300
F 0 "R?" V 6993 1300 50  0000 C CNN
F 1 "10k" V 7084 1300 50  0000 C CNN
F 2 "" V 7130 1300 50  0001 C CNN
F 3 "~" H 7200 1300 50  0001 C CNN
	1    7200 1300
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61C2761E
P 8350 1550
F 0 "C?" H 8465 1596 50  0000 L CNN
F 1 "1000uF" H 8465 1505 50  0000 L CNN
F 2 "" H 8388 1400 50  0001 C CNN
F 3 "~" H 8350 1550 50  0001 C CNN
	1    8350 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C28BB8
P 8550 2000
F 0 "#PWR?" H 8550 1750 50  0001 C CNN
F 1 "GND" H 8555 1827 50  0000 C CNN
F 2 "" H 8550 2000 50  0001 C CNN
F 3 "" H 8550 2000 50  0001 C CNN
	1    8550 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61C98150
P 9000 800
F 0 "#PWR?" H 9000 650 50  0001 C CNN
F 1 "+3.3V" H 9015 973 50  0000 C CNN
F 2 "" H 9000 800 50  0001 C CNN
F 3 "" H 9000 800 50  0001 C CNN
	1    9000 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 61CA0374
P 7750 1300
F 0 "Q?" H 7940 1346 50  0000 L CNN
F 1 "MMDT2222A" H 7940 1255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7950 1400 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 7750 1300 50  0001 C CNN
	1    7750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1300 7400 1300
Wire Wire Line
	7400 1650 7400 1300
Connection ~ 7400 1300
Wire Wire Line
	7400 1300 7550 1300
Wire Wire Line
	7400 1950 7850 1950
Wire Wire Line
	7850 1500 7850 1950
Wire Wire Line
	7850 1100 8150 1100
$Comp
L Device:R R?
U 1 1 61BFC782
P 8800 1550
F 0 "R?" H 8870 1596 50  0000 L CNN
F 1 "500k" H 8870 1505 50  0000 L CNN
F 2 "" V 8730 1550 50  0001 C CNN
F 3 "~" H 8800 1550 50  0001 C CNN
	1    8800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1100 8800 1100
Wire Wire Line
	8350 1400 8800 1400
Wire Wire Line
	8550 1950 8550 2000
Connection ~ 7850 1950
Wire Wire Line
	8800 1700 8800 1950
Wire Wire Line
	8800 1950 8550 1950
Connection ~ 8550 1950
Wire Wire Line
	7850 1950 8550 1950
Wire Wire Line
	8350 1700 8350 1800
Wire Wire Line
	8350 1800 8550 1800
Wire Wire Line
	8550 1800 8550 1950
Wire Wire Line
	8800 800  9000 800 
Connection ~ 8800 1400
Connection ~ 8800 1100
Wire Wire Line
	8800 1100 8800 1400
Wire Wire Line
	6450 3150 6600 3150
Text Label 6600 3150 0    50   ~ 0
LED
Wire Wire Line
	6450 3350 6600 3350
Text Label 6550 3350 0    50   ~ 0
LNA_IN
$Comp
L Device:R E-match?
U 1 1 61E75AFF
P 9900 2450
F 0 "E-match?" V 9693 2450 50  0000 C CNN
F 1 "R" V 9784 2450 50  0000 C CNN
F 2 "" V 9830 2450 50  0001 C CNN
F 3 "~" H 9900 2450 50  0001 C CNN
	1    9900 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E75B05
P 10400 2300
F 0 "R?" H 10470 2346 50  0000 L CNN
F 1 "1k" H 10470 2255 50  0000 L CNN
F 2 "" V 10330 2300 50  0001 C CNN
F 3 "~" H 10400 2300 50  0001 C CNN
	1    10400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E75B0B
P 9000 3150
F 0 "R?" H 9070 3196 50  0000 L CNN
F 1 "10k" H 9070 3105 50  0000 L CNN
F 2 "" V 8930 3150 50  0001 C CNN
F 3 "~" H 9000 3150 50  0001 C CNN
	1    9000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E75B11
P 8800 2650
F 0 "R?" V 8593 2650 50  0000 C CNN
F 1 "10k" V 8684 2650 50  0000 C CNN
F 2 "" V 8730 2650 50  0001 C CNN
F 3 "~" H 8800 2650 50  0001 C CNN
	1    8800 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61E75B17
P 9950 2900
F 0 "C?" H 10065 2946 50  0000 L CNN
F 1 "1000uF" H 10065 2855 50  0000 L CNN
F 2 "" H 9988 2750 50  0001 C CNN
F 3 "~" H 9950 2900 50  0001 C CNN
	1    9950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E75B1D
P 10150 3350
F 0 "#PWR?" H 10150 3100 50  0001 C CNN
F 1 "GND" H 10155 3177 50  0000 C CNN
F 2 "" H 10150 3350 50  0001 C CNN
F 3 "" H 10150 3350 50  0001 C CNN
	1    10150 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61E75B23
P 10600 2150
F 0 "#PWR?" H 10600 2000 50  0001 C CNN
F 1 "+3.3V" H 10615 2323 50  0000 C CNN
F 2 "" H 10600 2150 50  0001 C CNN
F 3 "" H 10600 2150 50  0001 C CNN
	1    10600 2150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 61E75B29
P 9350 2650
F 0 "Q?" H 9540 2696 50  0000 L CNN
F 1 "MMDT2222A" H 9540 2605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9550 2750 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 9350 2650 50  0001 C CNN
	1    9350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2650 9000 2650
Wire Wire Line
	9000 3000 9000 2650
Connection ~ 9000 2650
Wire Wire Line
	9000 2650 9150 2650
Wire Wire Line
	9000 3300 9450 3300
Wire Wire Line
	9450 2850 9450 3300
Wire Wire Line
	9450 2450 9750 2450
$Comp
L Device:R R?
U 1 1 61E75B36
P 10400 2900
F 0 "R?" H 10470 2946 50  0000 L CNN
F 1 "500k" H 10470 2855 50  0000 L CNN
F 2 "" V 10330 2900 50  0001 C CNN
F 3 "~" H 10400 2900 50  0001 C CNN
	1    10400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2450 10400 2450
Wire Wire Line
	9950 2750 10400 2750
Wire Wire Line
	10150 3300 10150 3350
Connection ~ 9450 3300
Wire Wire Line
	10400 3050 10400 3300
Wire Wire Line
	10400 3300 10150 3300
Connection ~ 10150 3300
Wire Wire Line
	9450 3300 10150 3300
Wire Wire Line
	9950 3050 9950 3150
Wire Wire Line
	9950 3150 10150 3150
Wire Wire Line
	10150 3150 10150 3300
Wire Wire Line
	10400 2150 10600 2150
Connection ~ 10400 2750
Connection ~ 10400 2450
Wire Wire Line
	10400 2450 10400 2750
$Comp
L Device:R E-match?
U 1 1 61E80950
P 8200 3900
F 0 "E-match?" V 7993 3900 50  0000 C CNN
F 1 "R" V 8084 3900 50  0000 C CNN
F 2 "" V 8130 3900 50  0001 C CNN
F 3 "~" H 8200 3900 50  0001 C CNN
	1    8200 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E80956
P 8700 3750
F 0 "R?" H 8770 3796 50  0000 L CNN
F 1 "1k" H 8770 3705 50  0000 L CNN
F 2 "" V 8630 3750 50  0001 C CNN
F 3 "~" H 8700 3750 50  0001 C CNN
	1    8700 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E8095C
P 7300 4600
F 0 "R?" H 7370 4646 50  0000 L CNN
F 1 "10k" H 7370 4555 50  0000 L CNN
F 2 "" V 7230 4600 50  0001 C CNN
F 3 "~" H 7300 4600 50  0001 C CNN
	1    7300 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E80962
P 7100 4100
F 0 "R?" V 6893 4100 50  0000 C CNN
F 1 "10k" V 6984 4100 50  0000 C CNN
F 2 "" V 7030 4100 50  0001 C CNN
F 3 "~" H 7100 4100 50  0001 C CNN
	1    7100 4100
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61E80968
P 8250 4350
F 0 "C?" H 8365 4396 50  0000 L CNN
F 1 "1000uF" H 8365 4305 50  0000 L CNN
F 2 "" H 8288 4200 50  0001 C CNN
F 3 "~" H 8250 4350 50  0001 C CNN
	1    8250 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E8096E
P 8450 4800
F 0 "#PWR?" H 8450 4550 50  0001 C CNN
F 1 "GND" H 8455 4627 50  0000 C CNN
F 2 "" H 8450 4800 50  0001 C CNN
F 3 "" H 8450 4800 50  0001 C CNN
	1    8450 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61E80974
P 8900 3600
F 0 "#PWR?" H 8900 3450 50  0001 C CNN
F 1 "+3.3V" H 8915 3773 50  0000 C CNN
F 2 "" H 8900 3600 50  0001 C CNN
F 3 "" H 8900 3600 50  0001 C CNN
	1    8900 3600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 61E8097A
P 7650 4100
F 0 "Q?" H 7840 4146 50  0000 L CNN
F 1 "MMDT2222A" H 7840 4055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7850 4200 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 7650 4100 50  0001 C CNN
	1    7650 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4100 7300 4100
Wire Wire Line
	7300 4450 7300 4100
Connection ~ 7300 4100
Wire Wire Line
	7300 4100 7450 4100
Wire Wire Line
	7300 4750 7750 4750
Wire Wire Line
	7750 4300 7750 4750
Wire Wire Line
	7750 3900 8050 3900
$Comp
L Device:R R?
U 1 1 61E80987
P 8700 4350
F 0 "R?" H 8770 4396 50  0000 L CNN
F 1 "500k" H 8770 4305 50  0000 L CNN
F 2 "" V 8630 4350 50  0001 C CNN
F 3 "~" H 8700 4350 50  0001 C CNN
	1    8700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3900 8700 3900
Wire Wire Line
	8250 4200 8700 4200
Wire Wire Line
	8450 4750 8450 4800
Connection ~ 7750 4750
Wire Wire Line
	8700 4500 8700 4750
Wire Wire Line
	8700 4750 8450 4750
Connection ~ 8450 4750
Wire Wire Line
	7750 4750 8450 4750
Wire Wire Line
	8250 4500 8250 4600
Wire Wire Line
	8250 4600 8450 4600
Wire Wire Line
	8450 4600 8450 4750
Wire Wire Line
	8700 3600 8900 3600
Connection ~ 8700 4200
Connection ~ 8700 3900
Wire Wire Line
	8700 3900 8700 4200
$Comp
L Device:R E-match?
U 1 1 61E8C44C
P 4100 6550
F 0 "E-match?" V 3893 6550 50  0000 C CNN
F 1 "R" V 3984 6550 50  0000 C CNN
F 2 "" V 4030 6550 50  0001 C CNN
F 3 "~" H 4100 6550 50  0001 C CNN
	1    4100 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E8C452
P 4600 6400
F 0 "R?" H 4670 6446 50  0000 L CNN
F 1 "1k" H 4670 6355 50  0000 L CNN
F 2 "" V 4530 6400 50  0001 C CNN
F 3 "~" H 4600 6400 50  0001 C CNN
	1    4600 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E8C458
P 3200 7250
F 0 "R?" H 3270 7296 50  0000 L CNN
F 1 "10k" H 3270 7205 50  0000 L CNN
F 2 "" V 3130 7250 50  0001 C CNN
F 3 "~" H 3200 7250 50  0001 C CNN
	1    3200 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E8C45E
P 3000 6750
F 0 "R?" V 2793 6750 50  0000 C CNN
F 1 "10k" V 2884 6750 50  0000 C CNN
F 2 "" V 2930 6750 50  0001 C CNN
F 3 "~" H 3000 6750 50  0001 C CNN
	1    3000 6750
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61E8C464
P 4150 7000
F 0 "C?" H 4265 7046 50  0000 L CNN
F 1 "1000uF" H 4265 6955 50  0000 L CNN
F 2 "" H 4188 6850 50  0001 C CNN
F 3 "~" H 4150 7000 50  0001 C CNN
	1    4150 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E8C46A
P 4350 7450
F 0 "#PWR?" H 4350 7200 50  0001 C CNN
F 1 "GND" H 4355 7277 50  0000 C CNN
F 2 "" H 4350 7450 50  0001 C CNN
F 3 "" H 4350 7450 50  0001 C CNN
	1    4350 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61E8C470
P 4800 6250
F 0 "#PWR?" H 4800 6100 50  0001 C CNN
F 1 "+3.3V" H 4815 6423 50  0000 C CNN
F 2 "" H 4800 6250 50  0001 C CNN
F 3 "" H 4800 6250 50  0001 C CNN
	1    4800 6250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 61E8C476
P 3550 6750
F 0 "Q?" H 3740 6796 50  0000 L CNN
F 1 "MMDT2222A" H 3740 6705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3750 6850 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 3550 6750 50  0001 C CNN
	1    3550 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6750 3200 6750
Wire Wire Line
	3200 7100 3200 6750
Connection ~ 3200 6750
Wire Wire Line
	3200 6750 3350 6750
Wire Wire Line
	3200 7400 3650 7400
Wire Wire Line
	3650 6950 3650 7400
Wire Wire Line
	3650 6550 3950 6550
$Comp
L Device:R R?
U 1 1 61E8C483
P 4600 7000
F 0 "R?" H 4670 7046 50  0000 L CNN
F 1 "500k" H 4670 6955 50  0000 L CNN
F 2 "" V 4530 7000 50  0001 C CNN
F 3 "~" H 4600 7000 50  0001 C CNN
	1    4600 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6550 4600 6550
Wire Wire Line
	4150 6850 4600 6850
Wire Wire Line
	4350 7400 4350 7450
Connection ~ 3650 7400
Wire Wire Line
	4600 7150 4600 7400
Wire Wire Line
	4600 7400 4350 7400
Connection ~ 4350 7400
Wire Wire Line
	3650 7400 4350 7400
Wire Wire Line
	4150 7150 4150 7250
Wire Wire Line
	4150 7250 4350 7250
Wire Wire Line
	4350 7250 4350 7400
Wire Wire Line
	4600 6250 4800 6250
Connection ~ 4600 6850
Connection ~ 4600 6550
Wire Wire Line
	4600 6550 4600 6850
$Comp
L Device:R E-match?
U 1 1 61E98F34
P 6150 6550
F 0 "E-match?" V 5943 6550 50  0000 C CNN
F 1 "R" V 6034 6550 50  0000 C CNN
F 2 "" V 6080 6550 50  0001 C CNN
F 3 "~" H 6150 6550 50  0001 C CNN
	1    6150 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E98F3A
P 6650 6400
F 0 "R?" H 6720 6446 50  0000 L CNN
F 1 "1k" H 6720 6355 50  0000 L CNN
F 2 "" V 6580 6400 50  0001 C CNN
F 3 "~" H 6650 6400 50  0001 C CNN
	1    6650 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E98F40
P 5250 7250
F 0 "R?" H 5320 7296 50  0000 L CNN
F 1 "10k" H 5320 7205 50  0000 L CNN
F 2 "" V 5180 7250 50  0001 C CNN
F 3 "~" H 5250 7250 50  0001 C CNN
	1    5250 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E98F46
P 5050 6750
F 0 "R?" V 4843 6750 50  0000 C CNN
F 1 "10k" V 4934 6750 50  0000 C CNN
F 2 "" V 4980 6750 50  0001 C CNN
F 3 "~" H 5050 6750 50  0001 C CNN
	1    5050 6750
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61E98F4C
P 6200 7000
F 0 "C?" H 6315 7046 50  0000 L CNN
F 1 "1000uF" H 6315 6955 50  0000 L CNN
F 2 "" H 6238 6850 50  0001 C CNN
F 3 "~" H 6200 7000 50  0001 C CNN
	1    6200 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E98F52
P 6400 7450
F 0 "#PWR?" H 6400 7200 50  0001 C CNN
F 1 "GND" H 6405 7277 50  0000 C CNN
F 2 "" H 6400 7450 50  0001 C CNN
F 3 "" H 6400 7450 50  0001 C CNN
	1    6400 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61E98F58
P 6850 6250
F 0 "#PWR?" H 6850 6100 50  0001 C CNN
F 1 "+3.3V" H 6865 6423 50  0000 C CNN
F 2 "" H 6850 6250 50  0001 C CNN
F 3 "" H 6850 6250 50  0001 C CNN
	1    6850 6250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 61E98F5E
P 5600 6750
F 0 "Q?" H 5790 6796 50  0000 L CNN
F 1 "MMDT2222A" H 5790 6705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5800 6850 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 5600 6750 50  0001 C CNN
	1    5600 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6750 5250 6750
Wire Wire Line
	5250 7100 5250 6750
Connection ~ 5250 6750
Wire Wire Line
	5250 6750 5400 6750
Wire Wire Line
	5250 7400 5700 7400
Wire Wire Line
	5700 6950 5700 7400
Wire Wire Line
	5700 6550 6000 6550
$Comp
L Device:R R?
U 1 1 61E98F6B
P 6650 7000
F 0 "R?" H 6720 7046 50  0000 L CNN
F 1 "500k" H 6720 6955 50  0000 L CNN
F 2 "" V 6580 7000 50  0001 C CNN
F 3 "~" H 6650 7000 50  0001 C CNN
	1    6650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6550 6650 6550
Wire Wire Line
	6200 6850 6650 6850
Wire Wire Line
	6400 7400 6400 7450
Connection ~ 5700 7400
Wire Wire Line
	6650 7150 6650 7400
Wire Wire Line
	6650 7400 6400 7400
Connection ~ 6400 7400
Wire Wire Line
	5700 7400 6400 7400
Wire Wire Line
	6200 7150 6200 7250
Wire Wire Line
	6200 7250 6400 7250
Wire Wire Line
	6400 7250 6400 7400
Wire Wire Line
	6650 6250 6850 6250
Connection ~ 6650 6850
Connection ~ 6650 6550
Wire Wire Line
	6650 6550 6650 6850
$Comp
L Device:R E-match?
U 1 1 61EAB0A2
P 9800 5350
F 0 "E-match?" V 9593 5350 50  0000 C CNN
F 1 "R" V 9684 5350 50  0000 C CNN
F 2 "" V 9730 5350 50  0001 C CNN
F 3 "~" H 9800 5350 50  0001 C CNN
	1    9800 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61EAB0A8
P 10300 5200
F 0 "R?" H 10370 5246 50  0000 L CNN
F 1 "1k" H 10370 5155 50  0000 L CNN
F 2 "" V 10230 5200 50  0001 C CNN
F 3 "~" H 10300 5200 50  0001 C CNN
	1    10300 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EAB0AE
P 8900 6050
F 0 "R?" H 8970 6096 50  0000 L CNN
F 1 "10k" H 8970 6005 50  0000 L CNN
F 2 "" V 8830 6050 50  0001 C CNN
F 3 "~" H 8900 6050 50  0001 C CNN
	1    8900 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EAB0B4
P 8700 5550
F 0 "R?" V 8493 5550 50  0000 C CNN
F 1 "10k" V 8584 5550 50  0000 C CNN
F 2 "" V 8630 5550 50  0001 C CNN
F 3 "~" H 8700 5550 50  0001 C CNN
	1    8700 5550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 61EAB0BA
P 9850 5800
F 0 "C?" H 9965 5846 50  0000 L CNN
F 1 "1000uF" H 9965 5755 50  0000 L CNN
F 2 "" H 9888 5650 50  0001 C CNN
F 3 "~" H 9850 5800 50  0001 C CNN
	1    9850 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EAB0C0
P 8450 6450
F 0 "#PWR?" H 8450 6200 50  0001 C CNN
F 1 "GND" H 8455 6277 50  0000 C CNN
F 2 "" H 8450 6450 50  0001 C CNN
F 3 "" H 8450 6450 50  0001 C CNN
	1    8450 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61EAB0C6
P 10500 5050
F 0 "#PWR?" H 10500 4900 50  0001 C CNN
F 1 "+3.3V" H 10515 5223 50  0000 C CNN
F 2 "" H 10500 5050 50  0001 C CNN
F 3 "" H 10500 5050 50  0001 C CNN
	1    10500 5050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q?
U 1 1 61EAB0CC
P 9250 5550
F 0 "Q?" H 9440 5596 50  0000 L CNN
F 1 "MMDT2222A" H 9440 5505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9450 5650 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 9250 5550 50  0001 C CNN
	1    9250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5550 8900 5550
Wire Wire Line
	8900 5900 8900 5550
Connection ~ 8900 5550
Wire Wire Line
	8900 5550 9050 5550
Wire Wire Line
	8900 6200 9350 6200
Wire Wire Line
	9350 5750 9350 6200
Wire Wire Line
	9350 5350 9650 5350
$Comp
L Device:R R?
U 1 1 61EAB0D9
P 10300 5800
F 0 "R?" H 10370 5846 50  0000 L CNN
F 1 "500k" H 10370 5755 50  0000 L CNN
F 2 "" V 10230 5800 50  0001 C CNN
F 3 "~" H 10300 5800 50  0001 C CNN
	1    10300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5350 10300 5350
Wire Wire Line
	9850 5650 10300 5650
Wire Wire Line
	10050 6200 10050 6250
Connection ~ 9350 6200
Wire Wire Line
	10300 5950 10300 6200
Wire Wire Line
	10300 6200 10050 6200
Connection ~ 10050 6200
Wire Wire Line
	9350 6200 10050 6200
Wire Wire Line
	9850 5950 9850 6050
Wire Wire Line
	9850 6050 10050 6050
Wire Wire Line
	10050 6050 10050 6200
Wire Wire Line
	10300 5050 10500 5050
Connection ~ 10300 5650
Connection ~ 10300 5350
Wire Wire Line
	10300 5350 10300 5650
Wire Wire Line
	2300 7250 2300 7350
Text Label 2600 7600 2    50   ~ 0
BOOT
Wire Wire Line
	2300 7600 2300 7550
Wire Wire Line
	2600 7600 2300 7600
$Comp
L Device:R_Small R8
U 1 1 5DAB35D0
P 2300 7450
F 0 "R8" H 2359 7496 50  0000 L CNN
F 1 "10K" H 2359 7405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2300 7450 50  0001 C CNN
F 3 "~" H 2300 7450 50  0001 C CNN
	1    2300 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6207A85F
P 2500 900
F 0 "D?" H 2500 695 50  0000 C CNN
F 1 "RX_LED" H 2500 786 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 2500 900 50  0001 C CNN
F 3 "~" V 2500 900 50  0001 C CNN
	1    2500 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 62086590
P 3000 900
F 0 "R?" V 2804 900 50  0000 C CNN
F 1 "470" V 2895 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3000 900 50  0001 C CNN
F 3 "~" H 3000 900 50  0001 C CNN
	1    3000 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 900  2900 900 
Wire Wire Line
	2400 900  2200 900 
Connection ~ 2200 900 
Wire Wire Line
	3100 900  3250 900 
Text Label 3250 900  0    50   ~ 0
USB_DET
$Comp
L Device:LED_Small D?
U 1 1 620C8C67
P 4150 1800
F 0 "D?" H 4150 1595 50  0000 C CNN
F 1 "RX_LED" H 4150 1686 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" V 4150 1800 50  0001 C CNN
F 3 "~" V 4150 1800 50  0001 C CNN
	1    4150 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 620C8C6D
P 4150 1300
F 0 "R?" V 3954 1300 50  0000 C CNN
F 1 "470" V 4045 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4150 1300 50  0001 C CNN
F 3 "~" H 4150 1300 50  0001 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1700 4150 1400
Wire Wire Line
	4150 1200 4150 1050
Text Label 4150 1050 1    50   ~ 0
USB_DET
$EndSCHEMATC
