// Example by Tom Igoe
import processing.serial.*;
Serial myPort;  // The serial port
Radar radar = new Radar(0,0,800);

void setup() {
  /*
  // List all the available serial ports:
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[0], 9600);
  */
   size(860, 860);
   background(3);
}

void draw() {
  /*
  while (myPort.available() > 0) {
    String inBuffer = myPort.readString();   
    if (inBuffer != null) {
      println(inBuffer);
    }
  }
  */
  
  background(3);
  for (int i=0; i<180;i++){
      radar.upd.setPoint(i,random(100,400));
  }
  
  radar.display();
  radar.upd.display();
  
}