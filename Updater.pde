class Updater 
{
  float x,y,dy;
  float angle=0;
  float px,py=0;
  float deltax;
  float deltay;
  float radius=dy/2;
  Updater(float X,float Y,float dY) {
   x=X;
   y=Y;
   dy=dY;
   radius=dy/2;
  }
  
  void setPoint(float a,float b){

    px=b*sin((a));
    py=b*cos((a));
  }
    
  

  
  boolean pIsBetween(){
    
    float lenAC= (px-x)*(px-x)+(py-y)*(py-y);
    float lenBC= (px-deltax)*(px-deltax)+(py-deltay)*(py-deltay);
    if (lenAC > lenBC) {
      return false;
    }
    float dotproduct= (px-x)*(px-deltax)+(py-y)*(py-deltay);
    if (dotproduct < 0.0){
      return false;
    }
    
    if (abs(dotproduct*dotproduct -  lenAC*lenBC) < 1 ){
      return false;
    }
    return true;
  }
  
  
  void display() {
    stroke(0,256,0);
    
    strokeWeight(1);

    //rotate(-angle);
    
    deltax=radius*sin(angle);
    deltay=radius*cos(angle);
    /**/
    
    //line(x,y,deltax,deltay);
    if (  !pIsBetween() ){
      fill(0,256,0);
      ellipse(px,py,10,10);
    }
    stroke(255,0,0);
    float deltax2=radius*sin(angle-0.9);
    float deltay2=radius*cos(angle-0.9);
    line(deltax2,deltay2,x,y);
    
    if (angle <= 0){
    angle=360;
    }
    // Geschwindigkeit des Roten Lasers
    // 0.05 == Standard
    angle-=0.05;
  }
}
