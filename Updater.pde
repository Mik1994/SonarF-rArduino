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
    px=b*sin(a);
    py=b*cos(a);
    //map(Y,0,180,400,400);
    println("a"+a+" b"+b+" px"+px+"py"+py);
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
    
   // println(abs(dotproduct*dotproduct -  lenAC*lenBC));
    if (abs(dotproduct*dotproduct -  lenAC*lenBC) < 1 ){
      return false;
    }
    return true;
  }
  void display() {
  pushMatrix();
    translate(width/2,height/2);
    stroke(0,256,0);
    
    strokeWeight(1);

    //rotate(-angle);
    
    deltax=radius*sin(angle);
    deltay=radius*cos(angle);
    line(x,y,deltax,deltay);
    if (  !pIsBetween() ){
      fill(0,256,0);
      ellipse(px,py,10,10);
    }
    //rotate(0.1);
    stroke(255,0,0);
    line(x,dy/2,x,y);
    
    if (angle <= 0){
    angle=360;
    }
    angle-=0.1;
    popMatrix();
  }
}