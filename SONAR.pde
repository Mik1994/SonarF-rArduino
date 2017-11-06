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
  fill(255);
  noStroke();
  translate(width/2,height/2);
  
  float winkel= 180;
  float w=map(winkel,0,180,radians(90),radians(270));
  float radius=250;
  // Mein Liebgewonnener Debug Kreis
  fill(255,20,20);
  ellipse(300*sin(w),300*cos(w),20,20);
  //
  radar.upd.setPoint(w,radius);
  radar.display();
  radar.upd.display();
  
}
