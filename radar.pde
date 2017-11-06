class Radar 
{
  float x;
  float y;
  float dmax;
  Updater upd;
  Radar(float X,float Y,float D) {
   x=X;
   y=Y;
   dmax=D;
   upd= new Updater(x,y,dmax);
  }
 
  void display() {
    float deltaD=dmax;
    pushMatrix();
    noFill();
    stroke(0,256,0);
    strokeWeight(1);
    for (int i=1; i<16;i++){
        rotate(PI/6);
        line(x,dmax/2,x,y);
        
    }
    
    strokeWeight(2);
    ellipse(x, y,deltaD,deltaD);
    deltaD-=20;
    ellipse(x, y,deltaD,deltaD);
    deltaD-=80;
    ellipse(x, y,deltaD,deltaD);
    deltaD-=100;
    ellipse(x, y,deltaD,deltaD);
    popMatrix();
  }
}
