EESchema Schematic File Version 4
LIBS:gate-in-cache
EELAYER 26 0
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
L Connector:AudioJack2_Ground_Switch J1
U 1 1 5FC82E98
P 3900 2700
F 0 "J1" H 3904 3042 50  0000 C CNN
F 1 "IN" H 3904 2951 50  0000 C CNN
F 2 "Connector_Thonk:ThonkiconnJack" H 3900 2700 50  0001 C CNN
F 3 "~" H 3900 2700 50  0001 C CNN
F 4 "Jack Connector" H 3900 2700 50  0001 C CNN "Device"
F 5 "Thonkiconn – 3.5mm Jack Sockets" H 3900 2700 50  0001 C CNN "Description"
F 6 "No" H 3900 2700 50  0001 C CNN "Place"
F 7 "Thonk" H 3900 2700 50  0001 C CNN "Dist"
F 8 "PJ398SM" H 3900 2700 50  0001 C CNN "DistPartNumber"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 3900 2700 50  0001 C CNN "DistLink"
	1    3900 2700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FC83467
P 7900 4700
F 0 "#FLG0101" H 7900 4775 50  0001 C CNN
F 1 "PWR_FLAG" H 7900 4874 50  0000 C CNN
F 2 "" H 7900 4700 50  0001 C CNN
F 3 "~" H 7900 4700 50  0001 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FC83485
P 7900 4700
F 0 "#PWR0106" H 7900 4450 50  0001 C CNN
F 1 "GND" H 7905 4527 50  0000 C CNN
F 2 "" H 7900 4700 50  0001 C CNN
F 3 "" H 7900 4700 50  0001 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FC92D66
P 4550 2700
F 0 "R1" V 4343 2700 50  0000 C CNN
F 1 "100k" V 4434 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4480 2700 50  0001 C CNN
F 3 "~" H 4550 2700 50  0001 C CNN
F 4 "Resistor" H 4550 2700 50  0001 C CNN "Device"
F 5 "RES SMD 100K OHM 1% 1/10W 0603" H 4550 2700 50  0001 C CNN "Description"
F 6 "Yes" H 4550 2700 50  0001 C CNN "Place"
F 7 "Digikey" H 4550 2700 50  0001 C CNN "Dist"
F 8 "P100KHCT-ND" H 4550 2700 50  0001 C CNN "DistPartNumber"
F 9 "https://www.digikey.de/product-detail/en/panasonic-electronic-components/ERJ-3EKF1003V/P100KHCT-ND/198110" H 4550 2700 50  0001 C CNN "DistLink"
	1    4550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FC9316D
P 5900 2150
F 0 "R3" H 6050 2200 50  0000 C CNN
F 1 "10k" H 6050 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5830 2150 50  0001 C CNN
F 3 "~" H 5900 2150 50  0001 C CNN
F 4 "Resistor" H 5900 2150 50  0001 C CNN "Device"
F 5 "RES SMD 10K OHM 1% 1/10W 0603" H 5900 2150 50  0001 C CNN "Description"
F 6 "Yes" H 5900 2150 50  0001 C CNN "Place"
F 7 "Digikey" H 5900 2150 50  0001 C CNN "Dist"
F 8 "P10.0KHCT-ND" H 5900 2150 50  0001 C CNN "DistPartNumber"
F 9 "https://www.digikey.de/product-detail/en/panasonic-electronic-components/ERJ-3EKF1002V/P10-0KHCT-ND/198102" H 5900 2150 50  0001 C CNN "DistLink"
	1    5900 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5FC933AD
P 7900 3000
F 0 "J2" H 7980 2992 50  0000 L CNN
F 1 "OUT" H 7980 2901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7900 3000 50  0001 C CNN
F 3 "~" H 7900 3000 50  0001 C CNN
F 4 "Male Header" H 7900 3000 50  0001 C CNN "Device"
F 5 "CONN HEADER VERT 6POS 2.54MM" H 7900 3000 50  0001 C CNN "Description"
F 6 "No" H 7900 3000 50  0001 C CNN "Place"
F 7 "Digikey" H 7900 3000 50  0001 C CNN "Dist"
F 8 "609-3272-ND" H 7900 3000 50  0001 C CNN "DistPartNumber"
F 9 "https://www.digikey.de/product-detail/en/amphenol-icc-fci/68001-106HLF/609-3272-ND/1878473" H 7900 3000 50  0001 C CNN "DistLink"
	1    7900 3000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FC9450D
P 8300 4700
F 0 "#FLG0102" H 8300 4775 50  0001 C CNN
F 1 "PWR_FLAG" H 8300 4874 50  0000 C CNN
F 2 "" H 8300 4700 50  0001 C CNN
F 3 "~" H 8300 4700 50  0001 C CNN
	1    8300 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5FC94F2A
P 7700 3000
F 0 "#PWR0113" H 7700 2750 50  0001 C CNN
F 1 "GND" V 7700 2800 50  0000 C CNN
F 2 "" H 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0001 C CNN
	1    7700 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5FC9AC4F
P 4200 2500
F 0 "#PWR0115" H 4200 2250 50  0001 C CNN
F 1 "GND" H 4205 2327 50  0000 C CNN
F 2 "" H 4200 2500 50  0001 C CNN
F 3 "" H 4200 2500 50  0001 C CNN
	1    4200 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 2600 4200 2600
Wire Wire Line
	4200 2600 4200 2500
$Comp
L Device:R R2
U 1 1 5FCA6E46
P 5300 2850
F 0 "R2" H 5150 2800 50  0000 C CNN
F 1 "100k" H 5100 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5230 2850 50  0001 C CNN
F 3 "~" H 5300 2850 50  0001 C CNN
F 4 "Resistor" H 5300 2850 50  0001 C CNN "Device"
F 5 "RES SMD 100K OHM 1% 1/10W 0603" H 5300 2850 50  0001 C CNN "Description"
F 6 "Yes" H 5300 2850 50  0001 C CNN "Place"
F 7 "Digikey" H 5300 2850 50  0001 C CNN "Dist"
F 8 "P100KHCT-ND" H 5300 2850 50  0001 C CNN "DistPartNumber"
F 9 "https://www.digikey.de/product-detail/en/panasonic-electronic-components/ERJ-3EKF1003V/P100KHCT-ND/198110" H 5300 2850 50  0001 C CNN "DistLink"
	1    5300 2850
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0102
U 1 1 5FCAC5A7
P 7700 2300
F 0 "#PWR0102" H 7700 2150 50  0001 C CNN
F 1 "+3V3" V 7715 2428 50  0000 L CNN
F 2 "" H 7700 2300 50  0001 C CNN
F 3 "" H 7700 2300 50  0001 C CNN
	1    7700 2300
	0    -1   -1   0   
$EndComp
Text GLabel 7700 2900 0    50   Output ~ 0
NOP
Text GLabel 4100 2800 2    50   Input ~ 0
NOP
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 5FCAD2ED
P 5800 2700
F 0 "Q1" H 5991 2746 50  0000 L CNN
F 1 "MMBT3904" H 5991 2655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6000 2625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5800 2700 50  0001 L CNN
F 4 "Bipolar Transistor" H 5800 2700 50  0001 C CNN "Device"
F 5 "TRANS NPN 40V 200MA SOT23-3" H 5800 2700 50  0001 C CNN "Description"
F 6 "Yes" H 5800 2700 50  0001 C CNN "Place"
F 7 "Digikey" H 5800 2700 50  0001 C CNN "Dist"
F 8 "MMBT3904LT1GOSCT-ND" H 5800 2700 50  0001 C CNN "DistPartNumber"
F 9 "https://www.digikey.de/product-detail/en/on-semiconductor/MMBT3904LT1G/MMBT3904LT1GOSCT-ND/1139813" H 5800 2700 50  0001 C CNN "DistLink"
	1    5800 2700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5FCAD5CA
P 4800 2850
F 0 "D1" V 4754 2929 50  0000 L CNN
F 1 "1N4148" V 4845 2929 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-523" H 4800 2675 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4800 2850 50  0001 C CNN
F 4 "Rectifier Diode" H 4800 2850 50  0001 C CNN "Device"
F 5 "DIODE GEN PURP 75V 200MA SOD523F" H 4800 2850 50  0001 C CNN "Description"
F 6 "Yes" H 4800 2850 50  0001 C CNN "Place"
F 7 "Digikey" H 4800 2850 50  0001 C CNN "Dist"
F 8 "1N4148WTCT-ND" H 4800 2850 50  0001 C CNN "DistPartNumber"
F 9 "https://www.digikey.de/product-detail/en/on-semiconductor/1N4148WT/1N4148WTCT-ND/2094398" H 4800 2850 50  0001 C CNN "DistLink"
	1    4800 2850
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5FCAE1B5
P 8300 4700
F 0 "#PWR0104" H 8300 4550 50  0001 C CNN
F 1 "+3V3" H 8315 4873 50  0000 C CNN
F 2 "" H 8300 4700 50  0001 C CNN
F 3 "" H 8300 4700 50  0001 C CNN
	1    8300 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FCAE609
P 4800 3000
F 0 "#PWR0105" H 4800 2750 50  0001 C CNN
F 1 "GND" H 4805 2827 50  0000 C CNN
F 2 "" H 4800 3000 50  0001 C CNN
F 3 "" H 4800 3000 50  0001 C CNN
	1    4800 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5FCAE634
P 5300 3000
F 0 "#PWR0107" H 5300 2750 50  0001 C CNN
F 1 "GND" H 5305 2827 50  0000 C CNN
F 2 "" H 5300 3000 50  0001 C CNN
F 3 "" H 5300 3000 50  0001 C CNN
	1    5300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FCAE64F
P 5900 3000
F 0 "#PWR0108" H 5900 2750 50  0001 C CNN
F 1 "GND" H 5905 2827 50  0000 C CNN
F 2 "" H 5900 3000 50  0001 C CNN
F 3 "" H 5900 3000 50  0001 C CNN
	1    5900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2900 5900 3000
Wire Wire Line
	4100 2700 4400 2700
Wire Wire Line
	4700 2700 4800 2700
Connection ~ 4800 2700
Wire Wire Line
	4800 2700 5300 2700
Connection ~ 5300 2700
Wire Wire Line
	5300 2700 5600 2700
$Comp
L power:+3V3 #PWR0109
U 1 1 5FCAE86A
P 5900 2000
F 0 "#PWR0109" H 5900 1850 50  0001 C CNN
F 1 "+3V3" H 5915 2173 50  0000 C CNN
F 2 "" H 5900 2000 50  0001 C CNN
F 3 "" H 5900 2000 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5FCAF962
P 7900 2000
F 0 "J3" H 7980 1992 50  0000 L CNN
F 1 "POWER" H 7980 1901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7900 2000 50  0001 C CNN
F 3 "~" H 7900 2000 50  0001 C CNN
F 4 "Male Header" H 7900 2000 50  0001 C CNN "Device"
F 5 "CONN HEADER VERT 6POS 2.54MM" H 7900 2000 50  0001 C CNN "Description"
F 6 "No" H 7900 2000 50  0001 C CNN "Place"
F 7 "Digikey" H 7900 2000 50  0001 C CNN "Dist"
F 8 "609-3272-ND" H 7900 2000 50  0001 C CNN "DistPartNumber"
F 9 "https://www.digikey.de/product-detail/en/amphenol-icc-fci/68001-106HLF/609-3272-ND/1878473" H 7900 2000 50  0001 C CNN "DistLink"
	1    7900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2300 5900 2400
Text GLabel 7700 2800 0    50   Input ~ 0
OUT
Text GLabel 6200 2400 2    50   Output ~ 0
OUT
Wire Wire Line
	5900 2400 6200 2400
Connection ~ 5900 2400
Wire Wire Line
	5900 2400 5900 2500
$Comp
L power:GND #PWR?
U 1 1 5FD392FF
P 7700 3100
F 0 "#PWR?" H 7700 2850 50  0001 C CNN
F 1 "GND" V 7700 2900 50  0000 C CNN
F 2 "" H 7700 3100 50  0001 C CNN
F 3 "" H 7700 3100 50  0001 C CNN
	1    7700 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD3931A
P 7700 3200
F 0 "#PWR?" H 7700 2950 50  0001 C CNN
F 1 "GND" V 7700 3000 50  0000 C CNN
F 2 "" H 7700 3200 50  0001 C CNN
F 3 "" H 7700 3200 50  0001 C CNN
	1    7700 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD39357
P 7700 3300
F 0 "#PWR?" H 7700 3050 50  0001 C CNN
F 1 "GND" V 7700 3100 50  0000 C CNN
F 2 "" H 7700 3300 50  0001 C CNN
F 3 "" H 7700 3300 50  0001 C CNN
	1    7700 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD39468
P 7700 1800
F 0 "#PWR?" H 7700 1550 50  0001 C CNN
F 1 "GND" V 7700 1600 50  0000 C CNN
F 2 "" H 7700 1800 50  0001 C CNN
F 3 "" H 7700 1800 50  0001 C CNN
	1    7700 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD39483
P 7700 1900
F 0 "#PWR?" H 7700 1650 50  0001 C CNN
F 1 "GND" V 7700 1700 50  0000 C CNN
F 2 "" H 7700 1900 50  0001 C CNN
F 3 "" H 7700 1900 50  0001 C CNN
	1    7700 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD3949E
P 7700 2000
F 0 "#PWR?" H 7700 1750 50  0001 C CNN
F 1 "GND" V 7700 1800 50  0000 C CNN
F 2 "" H 7700 2000 50  0001 C CNN
F 3 "" H 7700 2000 50  0001 C CNN
	1    7700 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD394B9
P 7700 2100
F 0 "#PWR?" H 7700 1850 50  0001 C CNN
F 1 "GND" V 7700 1900 50  0000 C CNN
F 2 "" H 7700 2100 50  0001 C CNN
F 3 "" H 7700 2100 50  0001 C CNN
	1    7700 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD394D4
P 7700 2200
F 0 "#PWR?" H 7700 1950 50  0001 C CNN
F 1 "GND" V 7700 2000 50  0000 C CNN
F 2 "" H 7700 2200 50  0001 C CNN
F 3 "" H 7700 2200 50  0001 C CNN
	1    7700 2200
	0    1    1    0   
$EndComp
$EndSCHEMATC
