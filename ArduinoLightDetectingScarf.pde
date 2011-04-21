/*
  
  ArduinoLightDetectingScarf
  
  The purpose of this sketch is to;
  1. Read input from Lilypad light sensor
  2. Analyse light level
  3. If light level is low, trigger LEDs into HIGH state
  
  [not sure yet - should there be a switch so the LEDs can be switched off?]
  [or another idea - the switch could be used to flick between blink and steady mode]
  
  Components used;
  * Lilypad light sensor
  * [Will use LED of some description]
  * [will need main board of some description]
  * [will need power supply of some description - probably coin battery type]


  VERSIONS
  0.1 -  21 Apr 11 - Initial pseudocode
  
  
  Created by Kathy Reid - @KathyReid on GitHub, Twitter etc
  kathyreid.id.au
  
 */

// initialise variables for the light sensor and for the LEDs here
int ledPin =  13;    // LED connected to digital pin 13

// The setup() method runs once, when the sketch starts

void setup()   {           
  // initialise the light sensor as input and the LEDs as output  
  // initialize the digital pin as an output:
  pinMode(ledPin, OUTPUT);     
}

// the loop() method runs over and over again,
// as long as the Arduino has power

void loop()                     
{
  read temperature in from light sensor
  evaluate temperature
  if temp > threshold
    trigger LEDs (or pattern of LEDs
  endif
}
