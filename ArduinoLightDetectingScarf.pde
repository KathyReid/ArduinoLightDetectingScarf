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
  0.2 -  07 Jul 11 - Initial revision
  
  
  Created by Kathy Reid - @KathyReid on GitHub, Twitter etc
  kathyreid.id.au
  
 */

/* Initialise variables */

int ledPin =  13;    // LED connected to digital pin 13
int ledPin1 = 6;
int ledPin2 = 7;
int ledPin3 = 8;
int ledPin4 = 9;
int ledPin5 = 10;

int sensorPin = 0; 	// light sensor is connected to analog pin 0
int sensorValue = 0; 	// variable to store the value coming from the sensor
int sensorFrequency = 100; // number of milliseconds between sensor readings

int lightThreshold = 10; // threshold below which light turns on 

void setup() 	 
{ 	 
         pinMode(ledPin, OUTPUT); 	// sets the ledPin to be an output
         
         pinMode(ledPin1, OUTPUT); 	// sets the ledPin to be an output
         pinMode(ledPin2, OUTPUT); 	// sets the ledPin to be an output
         pinMode(ledPin3, OUTPUT); 	// sets the ledPin to be an output
         pinMode(ledPin4, OUTPUT); 	// sets the ledPin to be an output
         pinMode(ledPin5, OUTPUT); 	// sets the ledPin to be an output
         
         Serial.begin(9600); 	//initialize the serial port
         
} 	 
  	 
void loop() 	// run over and over again
{ 	 
          sensorValue = analogRead(sensorPin); 	// read the value from the sensor
          Serial.println(sensorValue); 	// send that value to the computer
          
          /* Turn on the LEDs if the light sensor drops below threshold */
          if (sensorValue <= lightThreshold){
            digitalWrite(ledPin, HIGH); 	// turn the LED on
            
            digitalWrite(ledPin1, HIGH); 	// turn the LED on
            digitalWrite(ledPin2, HIGH); 	// turn the LED on
            digitalWrite(ledPin3, HIGH); 	// turn the LED on
            digitalWrite(ledPin4, HIGH); 	// turn the LED on
            digitalWrite(ledPin5, HIGH); 	// turn the LED on
          }
          else // turn the LEDs off
          {
            digitalWrite(ledPin, LOW); 	// turn the LED off
            
            digitalWrite(ledPin1, LOW); 	// turn the LED off
            digitalWrite(ledPin2, LOW); 	// turn the LED off
            digitalWrite(ledPin3, LOW); 	// turn the LED off
            digitalWrite(ledPin4, LOW); 	// turn the LED off
            digitalWrite(ledPin5, LOW); 	// turn the LED off
          }
          
          /* Delay for defined delay period */
          delay(sensorFrequency); 
} 

