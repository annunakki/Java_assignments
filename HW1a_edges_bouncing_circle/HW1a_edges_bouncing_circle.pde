/*
    Author: Fady Safar
            HW1a
********************************************************
submit a processing program that draws a Circle in the top left of the 
window and moves it right until it is at the right edge of the screen.  
Then move it down until it is at the bottom.  
Then move it to the left.  Last, move it back to the top-left and start over.
********************************************************/

void setup (){
  size (600,400);
  stroke(255);
  fill (255,0,0);
}
int Dia=50, Rad=Dia/2;
int x=0,y=0;
int xx=Rad,yy=Rad;
int speed =5;

void draw (){
  background(250,250,250);
  if (x==0 && y==0){
    xx=xx+speed;
    ellipse (xx,Rad,Dia,Dia);
    if (xx>=width-Rad){
      x=width;
     }
  }
  
  if (x==width && y==0){
    yy=yy+speed;
    ellipse (x-Rad,yy,Dia,Dia);
    if (yy>=height-Rad){
      y=height;
      }
  }
  
  if (x==width && y==height){
    xx=xx-speed;
    ellipse (xx,height-Rad,Dia,Dia);
    if (xx<=Rad){
      x=0;
    }
  }
  if (x==0 && y==height){
    yy=yy-speed;
    ellipse (x+Rad,yy,Dia,Dia);
    if (yy<=Rad){
      y=0;
    }
  }
}
  