#include <XBOXONESBT.h>
#include <usbhub.h>
// Satisfy the IDE, which needs to see the include statment in the ino too.
#ifdef dobogusinclude
#include <spi4teensy3.h>
#endif
#include <SPI.h>
#include <SoftwareSerial.h>
#include "PPMEncoder.h"

#define DEBUG 1
#if DEBUG == 1
#define debug(x) Serial.print(x)
#define debugln(x) Serial.println(x)
#else
#define debug(x)
#define debugln(x)
#endif

//pin assignments
#define SW_RX A0
#define SW_TX A1
#define PPM   3
#define SW1   4
#define SW2   5
#define SW3   6
#define SW4   7
#define LED_1 8
#define LED_2 9
#define LED_3 A2
#define LED_4 A3

//PPM params
#define PPM_min 1100
#define PPM_max 1900

USB Usb;
BTD Btd(&Usb);
XBOXONESBT Xbox(&Btd, PAIR);
SoftwareSerial swSerial(14, 15); // RX, TX (A0, A1)

bool LED_state[4] = {0, 0, 0, 0};

//serial params
float stick_max = 32767.0;
float stick_min = 7500.0;
float ana_max = 1023;
uint8_t float_digit = 3;

String joystick_check_serial();
uint16_t button_check_serial();
void joystick_check_ppm();
void button_check_ppm();

void setup() {  
  pinMode(SW1, INPUT);      //serial 0 PPM 1
  pinMode(SW2, INPUT);
  pinMode(SW3, INPUT);
  pinMode(SW4, INPUT);
  pinMode(LED_1, OUTPUT);   //USB ok 1 fail 0
  pinMode(LED_2, OUTPUT);   //serial 0 PPM 1
  pinMode(LED_3, OUTPUT);   //output 1 no output 0
  pinMode(LED_4, OUTPUT);

  //init
  digitalWrite(LED_1, LOW);
  digitalWrite(LED_2, digitalRead(SW1));
  digitalWrite(LED_3, LOW);
  digitalWrite(LED_4, LOW);

  LED_state[1] = digitalRead(SW1);

  if (digitalRead(SW1)==1)
    ppmEncoder.begin(PPM);
  
  Serial.begin(57600);
  swSerial.begin(57600);
#if !defined(__MIPSEL__)
  while (!Serial); // Wait for serial port to connect - used on Leonardo, Teensy and other boards with built-in USB CDC serial connection
#endif
  while (!Serial); // Wait for serial port to connect - used on Leonardo, Teensy and other boards with built-in USB CDC serial connection
  debugln(digitalRead(SW1));
  if (Usb.Init() == -1) {
    debug(F("\r\nInit Failed"));
    while (1); //halt
  }
  debug(F("\r\nXbox One S Bluetooth Library Started"));
  digitalWrite(LED_1, HIGH);
  LED_state[0] = 1;
}
void loop() {
  Usb.Task();
  if (Xbox.connected()) {
    //LeftHatX, LeftHatY, RightHatX, RightHatY, L2, R2, L1, R1, L3, R3, UP, DOWN, LEFT, RIGHT, A, B, X, Y, START, BACK, XBOX, SYNC
    digitalWrite(LED_3, HIGH);
    LED_state[1] = 1;
    if (digitalRead(SW1) == 0) {  //serial mode
      String msg = joystick_check_serial();
      msg += String((long)button_check_serial());

      swSerial.println(msg);
      Serial.println(msg);
    }
  	else {	//PPM mode
      joystick_check_ppm();
      button_check_ppm();
	  }
  }
  else {  //xbox connection fail
    if (digitalRead(SW1) == 0) {  //serial mode
      String err_msg = "0.000 0.000 0.000 0.000 0.000 0.000 0";
      delay(50);
      swSerial.println(err_msg);
      Serial.println(err_msg);
    }
    else { //PPM mode
      delay(50);
    }
  }
}

String joystick_check_serial() {
  String msg = "";
  if(Xbox.getAnalogHat(LeftHatX) >= stick_min) {
    msg += String(((float(Xbox.getAnalogHat(LeftHatX)) - stick_min)/(stick_max-stick_min)), float_digit);
  }
  else if(Xbox.getAnalogHat(LeftHatX) <= -stick_min) {
    msg += String(((float(Xbox.getAnalogHat(LeftHatX)) + stick_min)/(stick_max-stick_min)), float_digit);
  }
  else 
    msg += "0.000";      
  msg += " ";
  
  if(Xbox.getAnalogHat(LeftHatY) >= stick_min) {
    msg += String(-((float(Xbox.getAnalogHat(LeftHatY)) - stick_min)/(stick_max-stick_min)), float_digit);
  }
  else if(Xbox.getAnalogHat(LeftHatY) <= -stick_min) {
    msg += String(-((float(Xbox.getAnalogHat(LeftHatY)) + stick_min)/(stick_max-stick_min)), float_digit);
  }
  else 
    msg += "0.000";    
  msg += " ";
  
  if(Xbox.getAnalogHat(RightHatX) >= stick_min) {
    msg += String(((float(Xbox.getAnalogHat(RightHatX)) - stick_min)/(stick_max-stick_min)), float_digit);
  }
  else if(Xbox.getAnalogHat(RightHatX) <= -stick_min) {
    msg += String(((float(Xbox.getAnalogHat(RightHatX)) + stick_min)/(stick_max-stick_min)), float_digit);
  }
  else 
    msg += "0.000";    
  msg += " ";
  
  if(Xbox.getAnalogHat(RightHatY) >= stick_min) {
    msg += String(-((float(Xbox.getAnalogHat(RightHatY)) - stick_min)/(stick_max-stick_min)), float_digit);
  }
  else if(Xbox.getAnalogHat(RightHatY) <= -stick_min) {
    msg += String(-((float(Xbox.getAnalogHat(RightHatY)) + stick_min)/(stick_max-stick_min)), float_digit);
  }
  else 
    msg += "0.000";    
  msg += " ";
  
  if (Xbox.getButtonPress(LT) > 0)
    msg += String((float(Xbox.getButtonPress(LT))/ana_max), float_digit);
  else
    msg += "0.000";      
  msg += " ";
  
  if (Xbox.getButtonPress(RT) > 0)
    msg += String((float(Xbox.getButtonPress(RT))/ana_max), float_digit);
  else
    msg += "0.000";    
  msg += " ";

  return msg;
}

uint16_t button_check_serial() {
  uint16_t button_array = 0;
  Xbox.getButtonPress(LB) ? button_array |= (1<<15) : button_array |= (0<<15);
  Xbox.getButtonPress(RB) ? button_array |= (1<<14) : button_array |= (0<<14);
  Xbox.getButtonClick(L3) ? button_array |= (1<<13) : button_array |= (0<<13);
  Xbox.getButtonClick(R3) ? button_array |= (1<<12) : button_array |= (0<<12);
  Xbox.getButtonPress(UP) ? button_array |= (1<<11) : button_array |= (0<<11);
  Xbox.getButtonPress(DOWN) ? button_array |= (1<<10) : button_array |= (0<<10);
  Xbox.getButtonPress(LEFT) ? button_array |= (1<<9) : button_array |= (0<<9);
  Xbox.getButtonPress(RIGHT) ? button_array |= (1<<8) : button_array |= (0<<8);
  Xbox.getButtonPress(A) ? button_array |= (1<<7) : button_array |= (0<<7);
  Xbox.getButtonPress(B) ? button_array |= (1<<6) : button_array |= (0<<6);
  Xbox.getButtonPress(X) ? button_array |= (1<<5) : button_array |= (0<<5);
  Xbox.getButtonPress(Y) ? button_array |= (1<<4) : button_array |= (0<<4);
  Xbox.getButtonPress(VIEW) ? button_array |= (1<<3) : button_array |= (0<<3);
  Xbox.getButtonPress(MENU) ? button_array |= (1<<2) : button_array |= (0<<2);
  Xbox.getButtonPress(XBOX) ? button_array |= (1<<1) : button_array |= (0<<1);

  return button_array;
}

void joystick_check_ppm() {
  ppmEncoder.setChannel(0, ((float)Xbox.getAnalogHat(LeftHatX)-32768.0)/65535.0);
  ppmEncoder.setChannel(1, ((float)Xbox.getAnalogHat(LeftHatY)-32768.0)/65535.0);
  ppmEncoder.setChannel(2, ((float)Xbox.getAnalogHat(RightHatX)-32768.0)/65535.0);
  ppmEncoder.setChannel(3, ((float)Xbox.getAnalogHat(RightHatY)-32768.0)/65535.0);
  ppmEncoder.setChannel(4, ((float)Xbox.getButtonPress(LT)-32768.0)/65535.0);
  ppmEncoder.setChannel(5, ((float)Xbox.getButtonPress(RT)-32768.0)/65535.0);
}

void button_check_ppm() {
  ppmEncoder.setChannel(0, PPM_max);
  Xbox.getButtonPress(LB) ? ppmEncoder.setChannel(6, PPM_max) : ppmEncoder.setChannel(6, PPM_min);
  Xbox.getButtonPress(RB) ? ppmEncoder.setChannel(7, PPM_max) : ppmEncoder.setChannel(7, PPM_min);
}
