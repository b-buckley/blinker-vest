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
P 6500 4000
F 0 "#PWR0102" H 6500 3750 50  0001 C CNN
F 1 "GNDREF" H 6505 3827 50  0001 C CNN
F 2 "" H 6500 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	1    6500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3900 6300 4000
Wire Wire Line
	6850 1850 6100 1850
$Comp
L Device:R_US R6
U 1 1 620FAD24
P 5000 3400
F 0 "R6" H 5068 3446 50  0000 L CNN
F 1 "10k" H 5068 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5040 3390 50  0001 C CNN
F 3 "~" H 5000 3400 50  0001 C CNN
	1    5000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 620FD1D0
P 4850 3250
F 0 "R5" V 4645 3250 50  0000 C CNN
F 1 "20k" V 4736 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4890 3240 50  0001 C CNN
F 3 "~" H 4850 3250 50  0001 C CNN
	1    4850 3250
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0106
U 1 1 62145627
P 5000 3550
F 0 "#PWR0106" H 5000 3300 50  0001 C CNN
F 1 "GNDREF" H 5005 3377 50  0001 C CNN
F 2 "" H 5000 3550 50  0001 C CNN
F 3 "" H 5000 3550 50  0001 C CNN
	1    5000 3550
	1    0    0    -1  
$EndComp
Text Notes 7400 7500 0    50   ~ 10
Motorcycle Traffic Signal Vest Control Circuit
Text Notes 8150 7650 0    50   ~ 10
02/15/2022
$Comp
L power:GNDREF #PWR0107
U 1 1 62145970
P 5400 2450
F 0 "#PWR0107" H 5400 2200 50  0001 C CNN
F 1 "GNDREF" H 5405 2277 50  0001 C CNN
F 2 "" H 5400 2450 50  0001 C CNN
F 3 "" H 5400 2450 50  0001 C CNN
	1    5400 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 620FD795
P 5250 2150
F 0 "R3" V 5045 2150 50  0000 C CNN
F 1 "20k" V 5136 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5290 2140 50  0001 C CNN
F 3 "~" H 5250 2150 50  0001 C CNN
	1    5250 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 620FBD59
P 5400 2300
F 0 "R4" H 5468 2346 50  0000 L CNN
F 1 "10k" H 5468 2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5440 2290 50  0001 C CNN
F 3 "~" H 5400 2300 50  0001 C CNN
	1    5400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1850 6850 3450
$Comp
L power:GNDREF #PWR0108
U 1 1 62143F63
P 5000 3000
F 0 "#PWR0108" H 5000 2750 50  0001 C CNN
F 1 "GNDREF" H 5005 2827 50  0001 C CNN
F 2 "" H 5000 3000 50  0001 C CNN
F 3 "" H 5000 3000 50  0001 C CNN
	1    5000 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 620FC6E1
P 4850 2700
F 0 "R7" V 4645 2700 50  0000 C CNN
F 1 "20k" V 4736 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4890 2690 50  0001 C CNN
F 3 "~" H 4850 2700 50  0001 C CNN
	1    4850 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 620FA2CA
P 5000 2850
F 0 "R8" H 5068 2896 50  0000 L CNN
F 1 "10k" H 5068 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5040 2840 50  0001 C CNN
F 3 "~" H 5000 2850 50  0001 C CNN
	1    5000 2850
	1    0    0    -1  
$EndComp
Connection ~ 5000 2700
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
P 6850 4850
F 0 "#PWR0110" H 6850 4600 50  0001 C CNN
F 1 "GNDREF" H 6855 4677 50  0000 C CNN
F 2 "" H 6850 4850 50  0001 C CNN
F 3 "" H 6850 4850 50  0001 C CNN
	1    6850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3900 6200 4000
Wire Wire Line
	6200 4000 6300 4000
Connection ~ 6300 4000
Wire Wire Line
	6300 4000 6500 4000
Wire Wire Line
	5700 3500 5600 3500
$Comp
L traffic-vest_controller-rescue:3549-2-3549-2 F3
U 1 1 622880EB
P 3800 2050
F 0 "F3" H 4200 2315 50  0000 C CNN
F 1 "1A" H 4200 2224 50  0000 C CNN
F 2 "3549-2:35492" H 4450 2150 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/3549-2.pdf" H 4450 2050 50  0001 L CNN
F 4 "Fuse Holder FUSE SOCKET MINI HORZ .700 X .394" H 4450 1950 50  0001 L CNN "Description"
F 5 "5.66" H 4450 1850 50  0001 L CNN "Height"
F 6 "534-3549-2" H 4450 1750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3549-2?qs=fP5bVVCrK%2Fei3gwwxH1JKw%3D%3D" H 4450 1650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Keystone Electronics" H 4450 1550 50  0001 L CNN "Manufacturer_Name"
F 9 "3549-2" H 4450 1450 50  0001 L CNN "Manufacturer_Part_Number"
	1    3800 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H6
U 1 1 622A2ABF
P 7050 4200
F 0 "H6" H 7100 4250 50  0000 L CNN
F 1 "LED +12V" H 7100 4150 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 4200 50  0001 C CNN
F 3 "~" H 7050 4200 50  0001 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H7
U 1 1 622A5774
P 7050 4450
F 0 "H7" H 7100 4500 50  0000 L CNN
F 1 "LED Data" H 7100 4400 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 4450 50  0001 C CNN
F 3 "~" H 7050 4450 50  0001 C CNN
	1    7050 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H8
U 1 1 622A5B3E
P 7050 4700
F 0 "H8" H 7100 4750 50  0000 L CNN
F 1 "LED GND" H 7100 4650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 4700 50  0001 C CNN
F 3 "~" H 7050 4700 50  0001 C CNN
	1    7050 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H1
U 1 1 622B1C15
P 3550 2600
F 0 "H1" V 3787 2603 50  0000 C CNN
F 1 "Bike Left" V 3696 2603 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3550 2600 50  0001 C CNN
F 3 "~" H 3550 2600 50  0001 C CNN
	1    3550 2600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H5
U 1 1 622B9006
P 3550 4700
F 0 "H5" V 3787 4703 50  0000 C CNN
F 1 "Bike Ground" V 3696 4703 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3550 4700 50  0001 C CNN
F 3 "~" H 3550 4700 50  0001 C CNN
	1    3550 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 622B94DD
P 3750 4850
F 0 "#PWR0101" H 3750 4600 50  0001 C CNN
F 1 "GNDREF" H 3755 4677 50  0000 C CNN
F 2 "" H 3750 4850 50  0001 C CNN
F 3 "" H 3750 4850 50  0001 C CNN
	1    3750 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H4
U 1 1 622B0FB1
P 3550 4200
F 0 "H4" V 3787 4203 50  0000 C CNN
F 1 "Bike Power" V 3696 4203 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3550 4200 50  0001 C CNN
F 3 "~" H 3550 4200 50  0001 C CNN
	1    3550 4200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H3
U 1 1 622B1527
P 3550 2050
F 0 "H3" V 3787 2053 50  0000 C CNN
F 1 "Bike Right" V 3696 2053 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3550 2050 50  0001 C CNN
F 3 "~" H 3550 2050 50  0001 C CNN
	1    3550 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 4700 6850 4850
Wire Wire Line
	5600 3500 5600 4450
Connection ~ 5400 2150
$Comp
L traffic-vest_controller-rescue:3549-2-3549-2 F4
U 1 1 622887C7
P 4650 4100
F 0 "F4" H 5050 4365 50  0000 C CNN
F 1 "7.5A" H 5050 4274 50  0000 C CNN
F 2 "3549-2:35492" H 5300 4200 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/3549-2.pdf" H 5300 4100 50  0001 L CNN
F 4 "Fuse Holder FUSE SOCKET MINI HORZ .700 X .394" H 5300 4000 50  0001 L CNN "Description"
F 5 "5.66" H 5300 3900 50  0001 L CNN "Height"
F 6 "534-3549-2" H 5300 3800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3549-2?qs=fP5bVVCrK%2Fei3gwwxH1JKw%3D%3D" H 5300 3700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Keystone Electronics" H 5300 3600 50  0001 L CNN "Manufacturer_Name"
F 9 "3549-2" H 5300 3500 50  0001 L CNN "Manufacturer_Part_Number"
	1    4650 4100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 H2
U 1 1 622B18CF
P 3550 3150
F 0 "H2" V 3787 3153 50  0000 C CNN
F 1 "Bike Brake" V 3696 3153 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 3550 3150 50  0001 C CNN
F 3 "~" H 3550 3150 50  0001 C CNN
	1    3550 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 2150 5600 2150
$Comp
L traffic-vest_controller-rescue:3549-2-3549-2 F2
U 1 1 62287AD4
P 3800 3150
F 0 "F2" H 4200 3415 50  0000 C CNN
F 1 "1A" H 4200 3324 50  0000 C CNN
F 2 "3549-2:35492" H 4450 3250 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/3549-2.pdf" H 4450 3150 50  0001 L CNN
F 4 "Fuse Holder FUSE SOCKET MINI HORZ .700 X .394" H 4450 3050 50  0001 L CNN "Description"
F 5 "5.66" H 4450 2950 50  0001 L CNN "Height"
F 6 "534-3549-2" H 4450 2850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3549-2?qs=fP5bVVCrK%2Fei3gwwxH1JKw%3D%3D" H 4450 2750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Keystone Electronics" H 4450 2650 50  0001 L CNN "Manufacturer_Name"
F 9 "3549-2" H 4450 2550 50  0001 L CNN "Manufacturer_Part_Number"
	1    3800 3150
	1    0    0    -1  
$EndComp
Connection ~ 5000 3250
Wire Wire Line
	6850 3750 6850 4200
Wire Wire Line
	3750 4700 3750 4850
Wire Wire Line
	5600 4450 6850 4450
Wire Wire Line
	3750 2050 3750 2150
Wire Wire Line
	3750 2150 3800 2150
Wire Wire Line
	4600 2050 4700 2050
Wire Wire Line
	4700 2050 4700 2150
Wire Wire Line
	4700 2150 5100 2150
Wire Wire Line
	3750 3150 3750 3250
Wire Wire Line
	3750 3250 3800 3250
Wire Wire Line
	5500 4100 5500 4200
Wire Wire Line
	5500 4200 6850 4200
Connection ~ 6850 4200
Wire Wire Line
	3750 4200 3750 4100
Wire Wire Line
	3750 4100 3850 4100
Wire Wire Line
	4650 4100 5500 4100
$Comp
L traffic-vest_controller-rescue:3549-2-3549-2 F1
U 1 1 62286CF1
P 3800 2600
F 0 "F1" H 4200 2865 50  0000 C CNN
F 1 "1A" H 4200 2774 50  0000 C CNN
F 2 "3549-2:35492" H 4450 2700 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/3549-2.pdf" H 4450 2600 50  0001 L CNN
F 4 "Fuse Holder FUSE SOCKET MINI HORZ .700 X .394" H 4450 2500 50  0001 L CNN "Description"
F 5 "5.66" H 4450 2400 50  0001 L CNN "Height"
F 6 "534-3549-2" H 4450 2300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Keystone-Electronics/3549-2?qs=fP5bVVCrK%2Fei3gwwxH1JKw%3D%3D" H 4450 2200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Keystone Electronics" H 4450 2100 50  0001 L CNN "Manufacturer_Name"
F 9 "3549-2" H 4450 2000 50  0001 L CNN "Manufacturer_Part_Number"
	1    3800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2700 5600 2700
Wire Wire Line
	4600 2600 4700 2600
Wire Wire Line
	4700 2600 4700 2700
Wire Wire Line
	3750 2600 3750 2700
Wire Wire Line
	3750 2700 3800 2700
Wire Wire Line
	4600 3150 4700 3150
Wire Wire Line
	4700 3150 4700 3250
Wire Wire Line
	5650 3250 5650 2800
Wire Wire Line
	5650 2800 5700 2800
Wire Wire Line
	5000 3250 5650 3250
Wire Wire Line
	5600 2700 5600 2600
Wire Wire Line
	5600 2600 5700 2600
Wire Wire Line
	5600 2150 5600 2500
Wire Wire Line
	5600 2500 5700 2500
$EndSCHEMATC
