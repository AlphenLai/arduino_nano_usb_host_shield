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
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 61531C3D
P 6200 3350
F 0 "A1" H 6200 2261 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 6200 2170 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6200 3350 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 6200 3350 50  0001 C CNN
	1    6200 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 61539BC8
P 3650 2350
F 0 "J1" H 3758 2631 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3758 2540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3650 2350 50  0001 C CNN
F 3 "~" H 3650 2350 50  0001 C CNN
	1    3650 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 6153B59C
P 3650 2900
F 0 "J2" H 3758 3181 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3758 3090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3650 2900 50  0001 C CNN
F 3 "~" H 3650 2900 50  0001 C CNN
	1    3650 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 6153BF5C
P 3650 5200
F 0 "J3" H 3758 5381 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3758 5290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3650 5200 50  0001 C CNN
F 3 "~" H 3650 5200 50  0001 C CNN
	1    3650 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 6153C5BC
P 3650 3400
F 0 "J4" H 3758 3581 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3758 3490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3650 3400 50  0001 C CNN
F 3 "~" H 3650 3400 50  0001 C CNN
	1    3650 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 6153E06D
P 3650 4150
F 0 "J5" H 3758 4331 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3758 4240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3650 4150 50  0001 C CNN
F 3 "~" H 3650 4150 50  0001 C CNN
	1    3650 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 61542217
P 4200 5200
F 0 "#PWR01" H 4200 5050 50  0001 C CNN
F 1 "+5V" V 4215 5328 50  0000 L CNN
F 2 "" H 4200 5200 50  0001 C CNN
F 3 "" H 4200 5200 50  0001 C CNN
	1    4200 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 61543191
P 6300 4600
F 0 "#PWR05" H 6300 4350 50  0001 C CNN
F 1 "GND" H 6305 4427 50  0000 C CNN
F 2 "" H 6300 4600 50  0001 C CNN
F 3 "" H 6300 4600 50  0001 C CNN
	1    6300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4350 6200 4500
Wire Wire Line
	6200 4500 6300 4500
Wire Wire Line
	6300 4500 6300 4350
Wire Wire Line
	6300 4600 6300 4500
Connection ~ 6300 4500
Text GLabel 5600 4050 0    50   Input ~ 0
SCK
Text GLabel 5600 3950 0    50   Input ~ 0
MISO
Text GLabel 5600 3850 0    50   Input ~ 0
MOSI
Text GLabel 5600 3750 0    50   Input ~ 0
SS
Text GLabel 6850 2850 2    50   Input ~ 0
RST
Wire Wire Line
	5600 3750 5700 3750
Wire Wire Line
	5600 3850 5700 3850
Wire Wire Line
	5600 3950 5700 3950
Wire Wire Line
	5600 4050 5700 4050
Text GLabel 4200 2250 2    50   Input ~ 0
SCK
Text GLabel 4200 2350 2    50   Input ~ 0
MISO
Text GLabel 4200 2450 2    50   Input ~ 0
MOSI
Text GLabel 4200 2550 2    50   Input ~ 0
SS
Wire Wire Line
	3850 2250 4200 2250
Wire Wire Line
	3850 2350 4200 2350
Wire Wire Line
	3850 2450 4200 2450
Wire Wire Line
	3850 2550 4200 2550
Wire Wire Line
	6700 2850 6850 2850
Wire Wire Line
	6300 2350 6300 2200
Wire Wire Line
	6300 2200 4750 2200
Wire Wire Line
	4750 2200 4750 2800
Wire Wire Line
	4750 2800 3850 2800
$Comp
L power:GND #PWR04
U 1 1 6154B08A
P 4250 3000
F 0 "#PWR04" H 4250 2750 50  0001 C CNN
F 1 "GND" V 4255 2872 50  0000 R CNN
F 2 "" H 4250 3000 50  0001 C CNN
F 3 "" H 4250 3000 50  0001 C CNN
	1    4250 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3000 3850 3000
Text GLabel 4200 3400 2    50   Input ~ 0
RST
Wire Wire Line
	3850 3400 4200 3400
Text Label 3950 4150 0    50   ~ 0
USB_pwr
Text Label 4150 5200 0    50   ~ 0
dev_pwr
Text Label 4150 2800 0    50   ~ 0
chip_pwr
Text GLabel 5600 2950 0    50   Input ~ 0
INT
Text GLabel 4200 4250 2    50   Input ~ 0
INT
Wire Wire Line
	3850 4250 4200 4250
Wire Wire Line
	5600 2950 5700 2950
Text GLabel 4200 4700 2    50   Input ~ 0
SW_TX
Text GLabel 4200 4600 2    50   Input ~ 0
SW_RX
Text GLabel 6850 3450 2    50   Input ~ 0
SW_TX
Text GLabel 6850 3350 2    50   Input ~ 0
SW_RX
Wire Wire Line
	6700 3350 6850 3350
Wire Wire Line
	6700 3450 6850 3450
Wire Wire Line
	3850 4600 4200 4600
Wire Wire Line
	4200 4700 3850 4700
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 615525F5
P 8400 2600
F 0 "J7" H 8372 2532 50  0000 R CNN
F 1 "Conn_01x03_Male" H 8372 2623 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8400 2600 50  0001 C CNN
F 3 "~" H 8400 2600 50  0001 C CNN
	1    8400 2600
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DIP_x04 SW1
U 1 1 61553F5A
P 8150 3400
F 0 "SW1" H 8150 3867 50  0000 C CNN
F 1 "SW_DIP_x04" H 8150 3776 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx04_Slide_9.78x12.34mm_W7.62mm_P2.54mm" H 8150 3400 50  0001 C CNN
F 3 "~" H 8150 3400 50  0001 C CNN
	1    8150 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 61557B5D
P 8100 2600
F 0 "#PWR09" H 8100 2450 50  0001 C CNN
F 1 "+5V" V 8115 2728 50  0000 L CNN
F 2 "" H 8100 2600 50  0001 C CNN
F 3 "" H 8100 2600 50  0001 C CNN
	1    8100 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61557B63
P 8100 2700
F 0 "#PWR08" H 8100 2450 50  0001 C CNN
F 1 "GND" V 8105 2572 50  0000 R CNN
F 2 "" H 8100 2700 50  0001 C CNN
F 3 "" H 8100 2700 50  0001 C CNN
	1    8100 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2600 8200 2600
Wire Wire Line
	8100 2700 8200 2700
Text GLabel 8100 2500 0    50   Input ~ 0
PWM_OUT
Text GLabel 5600 3050 0    50   Input ~ 0
PWM_OUT
Wire Wire Line
	8100 2500 8200 2500
Wire Wire Line
	6700 3550 6850 3550
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 6155E594
P 3650 4700
F 0 "J6" H 3758 4981 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3758 4890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3650 4700 50  0001 C CNN
F 3 "~" H 3650 4700 50  0001 C CNN
	1    3650 4700
	1    0    0    -1  
$EndComp
Text GLabel 4200 4800 2    50   Input ~ 0
RX
Text GLabel 4200 4900 2    50   Input ~ 0
TX
Text GLabel 5600 2750 0    50   Input ~ 0
RX
Text GLabel 5600 2850 0    50   Input ~ 0
TX
Wire Wire Line
	5600 2750 5700 2750
Wire Wire Line
	5600 2850 5700 2850
Wire Wire Line
	3850 4800 4200 4800
Wire Wire Line
	3850 4900 4200 4900
Wire Wire Line
	7650 3200 7750 3200
Wire Wire Line
	7750 3500 7850 3500
Wire Wire Line
	7750 3200 7750 3300
Connection ~ 7750 3200
Wire Wire Line
	7750 3200 7850 3200
Wire Wire Line
	7750 3300 7850 3300
Connection ~ 7750 3300
Wire Wire Line
	7750 3300 7750 3400
Wire Wire Line
	7750 3400 7850 3400
Connection ~ 7750 3400
Wire Wire Line
	7750 3400 7750 3500
Text GLabel 8550 3800 3    50   Input ~ 0
SW1
Text GLabel 8650 3800 3    50   Input ~ 0
SW2
Text GLabel 8750 3800 3    50   Input ~ 0
SW3
Text GLabel 8850 3800 3    50   Input ~ 0
SW4
Wire Wire Line
	5600 3050 5700 3050
Wire Wire Line
	5600 3150 5700 3150
Wire Wire Line
	5600 3250 5700 3250
Wire Wire Line
	5600 3350 5700 3350
$Comp
L Device:R R5
U 1 1 61572532
P 9250 3200
F 0 "R5" V 9200 2950 50  0000 C CNN
F 1 "10k" V 9250 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9180 3200 50  0001 C CNN
F 3 "~" H 9250 3200 50  0001 C CNN
	1    9250 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 6157A012
P 9250 3300
F 0 "R6" V 9200 3050 50  0000 C CNN
F 1 "10k" V 9250 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9180 3300 50  0001 C CNN
F 3 "~" H 9250 3300 50  0001 C CNN
	1    9250 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 6157AFBE
P 9250 3400
F 0 "R7" V 9200 3150 50  0000 C CNN
F 1 "10k" V 9250 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9180 3400 50  0001 C CNN
F 3 "~" H 9250 3400 50  0001 C CNN
	1    9250 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 6157BF31
P 9250 3500
F 0 "R8" V 9200 3250 50  0000 C CNN
F 1 "10k" V 9250 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9180 3500 50  0001 C CNN
F 3 "~" H 9250 3500 50  0001 C CNN
	1    9250 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6157E367
P 9600 3200
F 0 "#PWR011" H 9600 2950 50  0001 C CNN
F 1 "GND" V 9605 3072 50  0000 R CNN
F 2 "" H 9600 3200 50  0001 C CNN
F 3 "" H 9600 3200 50  0001 C CNN
	1    9600 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 3500 9500 3500
Wire Wire Line
	9500 3500 9500 3400
Wire Wire Line
	9500 3200 9400 3200
Wire Wire Line
	9400 3300 9500 3300
Connection ~ 9500 3300
Wire Wire Line
	9500 3300 9500 3200
Wire Wire Line
	9400 3400 9500 3400
Connection ~ 9500 3400
Wire Wire Line
	9500 3400 9500 3300
Wire Wire Line
	9600 3200 9500 3200
Connection ~ 9500 3200
Text GLabel 6850 3550 2    50   Input ~ 0
LED3
Text GLabel 6850 3650 2    50   Input ~ 0
LED4
Wire Wire Line
	5600 3450 5700 3450
Wire Wire Line
	5600 3550 5700 3550
Wire Wire Line
	5600 3650 5700 3650
Wire Wire Line
	6700 3650 6850 3650
$Comp
L Device:LED D1
U 1 1 615ABDCE
P 7850 4250
F 0 "D1" H 7650 4200 50  0000 C CNN
F 1 "LED" H 8000 4200 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 4250 50  0001 C CNN
F 3 "~" H 7850 4250 50  0001 C CNN
	1    7850 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 615B25F5
P 8250 4250
F 0 "R1" V 8200 4400 50  0000 C CNN
F 1 "220" V 8250 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8180 4250 50  0001 C CNN
F 3 "~" H 8250 4250 50  0001 C CNN
	1    8250 4250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 615B43B7
P 8600 4250
F 0 "#PWR010" H 8600 4000 50  0001 C CNN
F 1 "GND" V 8605 4122 50  0000 R CNN
F 2 "" H 8600 4250 50  0001 C CNN
F 3 "" H 8600 4250 50  0001 C CNN
	1    8600 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 615C0A8D
P 7850 4400
F 0 "D2" H 7650 4350 50  0000 C CNN
F 1 "LED" H 8000 4350 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 4400 50  0001 C CNN
F 3 "~" H 7850 4400 50  0001 C CNN
	1    7850 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 615C263F
P 7850 4550
F 0 "D3" H 7650 4500 50  0000 C CNN
F 1 "LED" H 8000 4500 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 4550 50  0001 C CNN
F 3 "~" H 7850 4550 50  0001 C CNN
	1    7850 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 615C4130
P 7850 4700
F 0 "D4" H 7650 4650 50  0000 C CNN
F 1 "LED" H 8000 4650 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 4700 50  0001 C CNN
F 3 "~" H 7850 4700 50  0001 C CNN
	1    7850 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 615C6529
P 8250 4400
F 0 "R2" V 8200 4550 50  0000 C CNN
F 1 "220" V 8250 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8180 4400 50  0001 C CNN
F 3 "~" H 8250 4400 50  0001 C CNN
	1    8250 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 615C80C3
P 8250 4550
F 0 "R3" V 8200 4700 50  0000 C CNN
F 1 "220" V 8250 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8180 4550 50  0001 C CNN
F 3 "~" H 8250 4550 50  0001 C CNN
	1    8250 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 615C9BE0
P 8250 4700
F 0 "R4" V 8200 4850 50  0000 C CNN
F 1 "220" V 8250 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8180 4700 50  0001 C CNN
F 3 "~" H 8250 4700 50  0001 C CNN
	1    8250 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 4250 8500 4250
Wire Wire Line
	8400 4400 8500 4400
Wire Wire Line
	8500 4400 8500 4250
Connection ~ 8500 4250
Wire Wire Line
	8400 4700 8500 4700
Wire Wire Line
	8500 4700 8500 4550
Connection ~ 8500 4400
Wire Wire Line
	8400 4550 8500 4550
Connection ~ 8500 4550
Wire Wire Line
	8500 4550 8500 4400
Wire Wire Line
	8000 4250 8100 4250
Wire Wire Line
	8000 4400 8100 4400
Wire Wire Line
	8000 4550 8100 4550
Wire Wire Line
	8000 4700 8100 4700
NoConn ~ 6850 3150
NoConn ~ 6850 2750
NoConn ~ 6850 3750
NoConn ~ 6850 3850
NoConn ~ 6850 3950
NoConn ~ 6850 4050
NoConn ~ 6100 2300
NoConn ~ 4200 2900
NoConn ~ 4200 3100
NoConn ~ 4200 3500
Wire Wire Line
	4200 2900 3850 2900
Wire Wire Line
	4200 3100 3850 3100
Wire Wire Line
	4200 3500 3850 3500
Wire Wire Line
	6850 3750 6700 3750
Wire Wire Line
	6850 3850 6700 3850
Wire Wire Line
	6850 3950 6700 3950
Wire Wire Line
	6850 4050 6700 4050
Wire Wire Line
	6850 3150 6700 3150
Wire Wire Line
	6850 2750 6700 2750
Wire Wire Line
	6100 2300 6100 2350
Wire Wire Line
	8500 4250 8600 4250
Wire Wire Line
	7600 4250 7700 4250
Wire Wire Line
	7600 4400 7700 4400
Wire Wire Line
	7600 4550 7700 4550
Text GLabel 7600 4700 0    50   Input ~ 0
LED4
Text GLabel 7600 4550 0    50   Input ~ 0
LED3
Text GLabel 7600 4400 0    50   Input ~ 0
LED2
Text GLabel 7600 4250 0    50   Input ~ 0
LED1
Wire Wire Line
	7600 4700 7700 4700
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61624FFC
P 3900 5450
F 0 "#FLG0101" H 3900 5525 50  0001 C CNN
F 1 "PWR_FLAG" H 3900 5623 50  0000 C CNN
F 2 "" H 3900 5450 50  0001 C CNN
F 3 "~" H 3900 5450 50  0001 C CNN
	1    3900 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 5300 4100 5300
$Comp
L power:GND #PWR02
U 1 1 61542D17
P 4200 5300
F 0 "#PWR02" H 4200 5050 50  0001 C CNN
F 1 "GND" V 4205 5172 50  0000 R CNN
F 2 "" H 4200 5300 50  0001 C CNN
F 3 "" H 4200 5300 50  0001 C CNN
	1    4200 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 5200 3900 5200
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 616650F0
P 4100 5600
F 0 "#FLG0102" H 4100 5675 50  0001 C CNN
F 1 "PWR_FLAG" H 4100 5773 50  0000 C CNN
F 2 "" H 4100 5600 50  0001 C CNN
F 3 "~" H 4100 5600 50  0001 C CNN
	1    4100 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 5200 3900 5450
Connection ~ 3900 5200
Wire Wire Line
	3900 5200 4200 5200
Wire Wire Line
	4100 5600 4100 5300
Connection ~ 4100 5300
Wire Wire Line
	4100 5300 4200 5300
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 6167CED8
P 3650 3800
F 0 "J8" H 3758 3981 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3758 3890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3650 3800 50  0001 C CNN
F 3 "~" H 3650 3800 50  0001 C CNN
	1    3650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3900 4400 3900
Wire Wire Line
	4400 4150 3850 4150
Wire Wire Line
	8450 3300 8750 3300
Wire Wire Line
	8450 3400 8650 3400
Wire Wire Line
	8850 3200 9100 3200
Connection ~ 8850 3200
Wire Wire Line
	8450 3200 8850 3200
Wire Wire Line
	8850 3200 8850 3800
Wire Wire Line
	8450 3500 8550 3500
Wire Wire Line
	8750 3800 8750 3300
Connection ~ 8750 3300
Wire Wire Line
	8750 3300 9100 3300
Wire Wire Line
	8650 3800 8650 3400
Connection ~ 8650 3400
Wire Wire Line
	8650 3400 9100 3400
Wire Wire Line
	8550 3800 8550 3500
Connection ~ 8550 3500
Wire Wire Line
	8550 3500 9100 3500
Text GLabel 5600 3150 0    50   Input ~ 0
SW1
Text GLabel 5600 3250 0    50   Input ~ 0
SW2
Text GLabel 5600 3350 0    50   Input ~ 0
SW3
Text GLabel 5600 3450 0    50   Input ~ 0
SW4
Text GLabel 5600 3550 0    50   Input ~ 0
LED1
Text GLabel 5600 3650 0    50   Input ~ 0
LED2
Text GLabel 7650 3200 0    50   Input ~ 0
arduino_pwr
Wire Wire Line
	6400 2050 6400 2350
Text GLabel 6400 2050 1    50   Input ~ 0
arduino_pwr
$Comp
L power:+5V #PWR0101
U 1 1 617ECCFA
P 4250 3700
F 0 "#PWR0101" H 4250 3550 50  0001 C CNN
F 1 "+5V" V 4265 3828 50  0000 L CNN
F 2 "" H 4250 3700 50  0001 C CNN
F 3 "" H 4250 3700 50  0001 C CNN
	1    4250 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3700 4250 3700
Wire Wire Line
	4400 3900 4400 4150
Wire Wire Line
	4150 3700 4150 3800
Wire Wire Line
	3850 3800 4150 3800
Wire Wire Line
	4150 3800 4200 3800
Connection ~ 4150 3800
$EndSCHEMATC
