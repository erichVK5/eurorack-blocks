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
L Switch:SW_SPDT ZZ1
U 1 1 5FD259E4
P 5000 4700
F 0 "ZZ1" H 5000 4985 50  0000 C CNN
F 1 "SW_SPDT" H 5000 4894 50  0000 C CNN
F 2 "Switch_Thonk:SW_SPDT_Dailywell" H 5000 4700 50  0001 C CNN
F 3 "https://www.thonk.co.uk/wp-content/uploads/2017/05/DW1-SPDT-ON-ON-2MS1T1B1M2QES.pdf" H 5000 4700 50  0001 C CNN
F 4 "Toggle Switch" H 5000 4700 50  0001 C CNN "Device"
F 5 "DW2 - SPDT ON-OFF-ON - Dailywell Sub-mini Toggle Switch" H 5000 4700 50  0001 C CNN "Description"
F 6 "No" H 5000 4700 50  0001 C CNN "Place"
F 7 "Thonk" H 5000 4700 50  0001 C CNN "Dist"
F 8 "DW2" H 5000 4700 50  0001 C CNN "DistPartNumber"
F 9 "https://www.thonk.co.uk/shop/sub-mini-toggle-switches/" H 5000 4700 50  0001 C CNN "DistLink"
	1    5000 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B938C9
P 5200 4600
F 0 "#PWR?" H 5200 4450 50  0001 C CNN
F 1 "+3V3" V 5215 4728 50  0000 L CNN
F 2 "" H 5200 4600 50  0001 C CNN
F 3 "" H 5200 4600 50  0001 C CNN
	1    5200 4600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint Pin0
U 1 1 60B942BC
P 4800 4700
F 0 "Pin0" V 4800 4888 50  0000 L CNN
F 1 "TestPoint" V 4845 4888 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5000 4700 50  0001 C CNN
F 3 "~" H 5000 4700 50  0001 C CNN
	1    4800 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 623DF405
P 5200 4800
F 0 "#PWR?" H 5200 4550 50  0001 C CNN
F 1 "GND" V 5205 4672 50  0000 R CNN
F 2 "" H 5200 4800 50  0001 C CNN
F 3 "" H 5200 4800 50  0001 C CNN
	1    5200 4800
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
