/*
Author: Fady Safar
        HW1
        
*/
 
void setup (){
   size (600,400);
  }
 int Dia = 30;
 int Rad = Dia /2;
 int x = 0;
 int y = 0;
 int Xdir = 2;
 int Ydir =2;
 void draw (){
   
   background(250,250,250);
   fill (255,0,0);
   ellipse (x,y,Dia,Dia);
   
    x = x + Xdir;
   y = y + Ydir;
   
   if (x +Rad>= width){
     Xdir = -1* Xdir;}
   if ( x <=0 + Rad && Xdir < 0 ){
       Xdir = -1 * Xdir;}
       
   
   if ( y + Rad >= height){
     Ydir = -1 * Ydir;}
     else if ( y <=0 + Rad && Ydir < 0){
      Ydir = -1 * Ydir;}
   
  
 }
 