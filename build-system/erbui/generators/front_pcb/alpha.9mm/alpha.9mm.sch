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
L Device:R_POT ZZ1
U 1 1 5FCAE65B
P 4350 2950
F 0 "ZZ1" H 4280 2996 50  0000 R CNN
F 1 "100k" H 4280 2905 50  0000 R CNN
F 2 "Potentiometer_Thonk:AlphaPot9ShaftD" H 4350 2950 50  0001 C CNN
F 3 "~" H 4350 2950 50  0001 C CNN
F 4 "Potentiometer" H 4350 2950 50  0001 C CNN "Device"
F 5 "ALPHA 9MM POTS – VERTICAL D-SHAFT" H 4350 2950 50  0001 C CNN "Description"
F 6 "No" H 4350 2950 50  0001 C CNN "Place"
F 7 "Thonk" H 4350 2950 50  0001 C CNN "Dist"
F 8 "RD901F-B100K" H 4350 2950 50  0001 C CNN "DistPartNumber"
F 9 "https://www.thonk.co.uk/shop/alpha-9mm-pots-dshaft/" H 4350 2950 50  0001 C CNN "DistLink"
	1    4350 2950
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B91767
P 4200 2950
F 0 "#PWR?" H 4200 2700 50  0001 C CNN
F 1 "GND" V 4205 2822 50  0000 R CNN
F 2 "" H 4200 2950 50  0001 C CNN
F 3 "" H 4200 2950 50  0001 C CNN
	1    4200 2950
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B921D9
P 4500 2950
F 0 "#PWR?" H 4500 2800 50  0001 C CNN
F 1 "+3V3" V 4515 3078 50  0000 L CNN
F 2 "" H 4500 2950 50  0001 C CNN
F 3 "" H 4500 2950 50  0001 C CNN
	1    4500 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint Pin0
U 1 1 60B9472F
P 4350 3100
F 0 "Pin0" H 4292 3172 50  0000 R CNN
F 1 "TestPoint" H 4292 3217 50  0001 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4550 3100 50  0001 C CNN
F 3 "~" H 4550 3100 50  0001 C CNN
	1    4350 3100
	-1   0    0    1   
$EndComp
$EndSCHEMATC
