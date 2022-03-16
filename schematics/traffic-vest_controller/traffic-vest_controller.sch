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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 620C4B1E
P 6200 2900
F 0 "A1" H 5900 1850 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5950 1750 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6200 2900 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6200 2900 50  0001 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1900 6100 1850
$Comp
L power:GNDREF #PWR0102
U 1 1 620C73DA
P 6300 4200
F 0 "#PWR0102" H 6300 3950 50  0001 C CNN
F 1 "GNDREF" H 6305 4027 50  0001 C CNN
F 2 "" H 6300 4200 50  0001 C CNN
F 3 "" H 6300 4200 50  0001 C CNN
	1    6300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3900 6300 4000
Wire Wire Line
	6850 1850 6100 1850
Wire Wire Line
	6850 4350 7100 4350
$Comp
L Device:R_US R6
U 1 1 620FAD24
P 4650 3400
F 0 "R6" H 4718 3446 50  0000 L CNN
F 1 "10k" H 4718 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4690 3390 50  0001 C CNN
F 3 "~" H 4650 3400 50  0001 C CNN
	1    4650 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 620FD1D0
P 4500 3250
F 0 "R5" V 4295 3250 50  0000 C CNN
F 1 "20k" V 4386 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4540 3240 50  0001 C CNN
F 3 "~" H 4500 3250 50  0001 C CNN
	1    4500 3250
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0106
U 1 1 62145627
P 4650 3550
F 0 "#PWR0106" H 4650 3300 50  0001 C CNN
F 1 "GNDREF" H 4655 3377 50  0001 C CNN
F 2 "" H 4650 3550 50  0001 C CNN
F 3 "" H 4650 3550 50  0001 C CNN
	1    4650 3550
	1    0    0    -1  
$EndComp
Text Notes 7400 7500 0    50   ~ 10
Motorcycle Traffic Signal Vest Control Circuit
Text Notes 8150 7650 0    50   ~ 10
02/15/2022
$Comp
L power:GNDREF #PWR0107
U 1 1 62145970
P 5100 3050
F 0 "#PWR0107" H 5100 2800 50  0001 C CNN
F 1 "GNDREF" H 5105 2877 50  0001 C CNN
F 2 "" H 5100 3050 50  0001 C CNN
F 3 "" H 5100 3050 50  0001 C CNN
	1    5100 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 620FD795
P 4950 2750
F 0 "R3" V 4745 2750 50  0000 C CNN
F 1 "20k" V 4836 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4990 2740 50  0001 C CNN
F 3 "~" H 4950 2750 50  0001 C CNN
	1    4950 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 620FBD59
P 5100 2900
F 0 "R4" H 5168 2946 50  0000 L CNN
F 1 "10k" H 5168 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5140 2890 50  0001 C CNN
F 3 "~" H 5100 2900 50  0001 C CNN
	1    5100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1850 6850 3450
$Comp
L power:GNDREF #PWR0108
U 1 1 62143F63
P 4350 2550
F 0 "#PWR0108" H 4350 2300 50  0001 C CNN
F 1 "GNDREF" H 4355 2377 50  0001 C CNN
F 2 "" H 4350 2550 50  0001 C CNN
F 3 "" H 4350 2550 50  0001 C CNN
	1    4350 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 620FC6E1
P 4200 2250
F 0 "R7" V 3995 2250 50  0000 C CNN
F 1 "20k" V 4086 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4240 2240 50  0001 C CNN
F 3 "~" H 4200 2250 50  0001 C CNN
	1    4200 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 620FA2CA
P 4350 2400
F 0 "R8" H 4418 2446 50  0000 L CNN
F 1 "10k" H 4418 2355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4390 2390 50  0001 C CNN
F 3 "~" H 4350 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2250 5600 2250
Wire Wire Line
	5600 2500 5700 2500
Connection ~ 4350 2250
$Comp
L Device:R_US R1
U 1 1 6215D85B
P 6850 3600
F 0 "R1" H 6918 3646 50  0000 L CNN
F 1 "100" H 6918 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6890 3590 50  0001 C CNN
F 3 "~" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 6215E3A8
P 7000 3450
F 0 "R2" V 6795 3450 50  0000 C CNN
F 1 "300" V 6886 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7040 3440 50  0001 C CNN
F 3 "~" H 7000 3450 50  0001 C CNN
	1    7000 3450
	0    1    1    0   
$EndComp
Connection ~ 6850 3450
$Comp
L power:GNDREF #PWR0109
U 1 1 6215EB15
P 7200 3800
F 0 "#PWR0109" H 7200 3550 50  0001 C CNN
F 1 "GNDREF" H 7205 3627 50  0000 C CNN
F 2 "" H 7200 3800 50  0001 C CNN
F 3 "" H 7200 3800 50  0001 C CNN
	1    7200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3800 7200 3450
Wire Wire Line
	7200 3450 7150 3450
$Comp
L power:GNDREF #PWR0110
U 1 1 6216EB45
P 7050 4900
F 0 "#PWR0110" H 7050 4650 50  0001 C CNN
F 1 "GNDREF" H 7055 4727 50  0000 C CNN
F 2 "" H 7050 4900 50  0001 C CNN
F 3 "" H 7050 4900 50  0001 C CNN
	1    7050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3900 6200 4000
Wire Wire Line
	6200 4000 6300 4000
Connection ~ 6300 4000
Wire Wire Line
	6300 4000 6300 4200
Wire Wire Line
	5700 3500 5600 3500
$Comp
L traffic-vest_controller-rescue:3549-2-3549-2 F1
U 1 1 62286CF1
P 4050 2150
F 0 "F1" H 4450 2415 50  0000 C CNN
F 1 "1A" H 4450 2324 50  0000 C CNN
F 2 "3549-2:35492" H 4700 2250 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/3549-2.pdf" H 4700 2150 50  0001 L CNN
F 4 "Fuse Holder FUSE SOCKET MINI HORZ .700 X .394" H 4700 2050 50  0001 L CNN "Description"
F 5 "5.66" H 4700 1950 50  0001 L CNN "Height"
F 6 "534-3549-2" H 4700 1850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3549-2?qs=fP5bVVCrK%2Fei3gwwxH1JKw%3D%3D" H 4700 1750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Keystone Electronics" H 4700 1650 50  0001 L CNN "Manufacturer_Name"
F 9 "3549-2" H 4700 1550 50  0001 L CNN "Manufacturer_Part_Number"
	1    4050 2150
	-1   0    0    -1  
$EndComp
$Comp
L traffic-vest_controller-rescue:3549-2-3549-2 F3
U 1 1 622880EB
P 3250 2650
F 0 "F3" H 3650 2915 50  0000 C CNN
F 1 "1A" H 3650 2824 50  0000 C CNN
F 2 "3549-2:35492" H 3900 2750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/3549-2.pdf" H 3900 2650 50  0001 L CNN
F 4 "Fuse Holder FUSE SOCKET MINI HORZ .700 X .394" H 3900 2550 50  0001 L CNN "Description"
F 5 "5.66" H 3900 2450 50  0001 L CNN "Height"
F 6 "534-3549-2" H 3900 2350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3549-2?qs=fP5bVVCrK%2Fei3gwwxH1JKw%3D%3D" H 3900 2250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Keystone Electronics" H 3900 2150 50  0001 L CNN "Manufacturer_Name"
F 9 "3549-2" H 3900 2050 50  0001 L CNN "Manufacturer_Part_Number"
	1    3250 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H6
U 1 1 622A2ABF
P 7300 4250
F 0 "H6" H 7350 4300 50  0000 L CNN
F 1 "LED +12V" H 7350 4200 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7300 4250 50  0001 C CNN
F 3 "~" H 7300 4250 50  0001 C CNN
	1    7300 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H7
U 1 1 622A5774
P 7300 4500
F 0 "H7" H 7350 4550 50  0000 L CNN
F 1 "LED Data" H 7350 4450 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7300 4500 50  0001 C CNN
F 3 "~" H 7300 4500 50  0001 C CNN
	1    7300 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H8
U 1 1 622A5B3E
P 7300 4750
F 0 "H8" H 7350 4800 50  0000 L CNN
F 1 "LED GND" H 7350 4700 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7300 4750 50  0001 C CNN
F 3 "~" H 7300 4750 50  0001 C CNN
	1    7300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4350 7100 4250
$Comp
L Connector_Generic:Conn_01x01 H1
U 1 1 622B1C15
P 3000 2150
F 0 "H1" V 3237 2153 50  0000 C CNN
F 1 "Bike Left" V 3146 2153 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3000 2150 50  0001 C CNN
F 3 "~" H 3000 2150 50  0001 C CNN
	1    3000 2150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H5
U 1 1 622B9006
P 3050 4800
F 0 "H5" V 3287 4803 50  0000 C CNN
F 1 "Bike Ground" V 3196 4803 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3050 4800 50  0001 C CNN
F 3 "~" H 3050 4800 50  0001 C CNN
	1    3050 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 622B94DD
P 3050 5100
F 0 "#PWR0101" H 3050 4850 50  0001 C CNN
F 1 "GNDREF" H 3055 4927 50  0000 C CNN
F 2 "" H 3050 5100 50  0001 C CNN
F 3 "" H 3050 5100 50  0001 C CNN
	1    3050 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H4
U 1 1 622B0FB1
P 3000 4350
F 0 "H4" V 3237 4353 50  0000 C CNN
F 1 "Bike Power" V 3146 4353 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3000 4350 50  0001 C CNN
F 3 "~" H 3000 4350 50  0001 C CNN
	1    3000 4350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H3
U 1 1 622B1527
P 3000 2650
F 0 "H3" V 3237 2653 50  0000 C CNN
F 1 "Bike Right" V 3146 2653 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3000 2650 50  0001 C CNN
F 3 "~" H 3000 2650 50  0001 C CNN
	1    3000 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 4750 7050 4750
Wire Wire Line
	7050 4750 7050 4900
Wire Wire Line
	3050 5000 3050 5100
Wire Wire Line
	5600 3500 5600 4500
Wire Wire Line
	5600 4500 7100 4500
Wire Wire Line
	5600 2250 5600 2500
Connection ~ 5100 2750
$Comp
L traffic-vest_controller-rescue:3549-2-3549-2 F4
U 1 1 622887C7
P 3250 4250
F 0 "F4" H 3650 4515 50  0000 C CNN
F 1 "7.5A" H 3650 4424 50  0000 C CNN
F 2 "3549-2:35492" H 3900 4350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/3549-2.pdf" H 3900 4250 50  0001 L CNN
F 4 "Fuse Holder FUSE SOCKET MINI HORZ .700 X .394" H 3900 4150 50  0001 L CNN "Description"
F 5 "5.66" H 3900 4050 50  0001 L CNN "Height"
F 6 "534-3549-2" H 3900 3950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3549-2?qs=fP5bVVCrK%2Fei3gwwxH1JKw%3D%3D" H 3900 3850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Keystone Electronics" H 3900 3750 50  0001 L CNN "Manufacturer_Name"
F 9 "3549-2" H 3900 3650 50  0001 L CNN "Manufacturer_Part_Number"
	1    3250 4250
	1    0    0    -1  
$EndComp
Connection ~ 4650 3250
$Comp
L Connector_Generic:Conn_01x01 H2
U 1 1 622B18CF
P 3000 3150
F 0 "H2" V 3237 3153 50  0000 C CNN
F 1 "Bike Brake" V 3146 3153 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3000 3150 50  0001 C CNN
F 3 "~" H 3000 3150 50  0001 C CNN
	1    3000 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 2150 3250 2150
Wire Wire Line
	5600 2750 5600 2600
Wire Wire Line
	5600 2600 5700 2600
Wire Wire Line
	5100 2750 5600 2750
Wire Wire Line
	5600 3250 5600 3400
Wire Wire Line
	5600 3400 5700 3400
Wire Wire Line
	5600 3250 4650 3250
$Comp
L traffic-vest_controller-rescue:3549-2-3549-2 F2
U 1 1 62287AD4
P 3250 3150
F 0 "F2" H 3650 3415 50  0000 C CNN
F 1 "1A" H 3650 3324 50  0000 C CNN
F 2 "3549-2:35492" H 3900 3250 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/3549-2.pdf" H 3900 3150 50  0001 L CNN
F 4 "Fuse Holder FUSE SOCKET MINI HORZ .700 X .394" H 3900 3050 50  0001 L CNN "Description"
F 5 "5.66" H 3900 2950 50  0001 L CNN "Height"
F 6 "534-3549-2" H 3900 2850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3549-2?qs=fP5bVVCrK%2Fei3gwwxH1JKw%3D%3D" H 3900 2750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Keystone Electronics" H 3900 2650 50  0001 L CNN "Manufacturer_Name"
F 9 "3549-2" H 3900 2550 50  0001 L CNN "Manufacturer_Part_Number"
	1    3250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3150 3250 3150
Wire Wire Line
	4050 3250 4350 3250
Wire Wire Line
	3200 4350 3250 4350
Wire Wire Line
	4050 4350 6850 4350
Wire Wire Line
	6850 3750 6850 4350
Connection ~ 6850 4350
Wire Wire Line
	3200 2650 3250 2650
Wire Wire Line
	4050 2750 4800 2750
$EndSCHEMATC
