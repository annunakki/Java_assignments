/*
author : Fady Safar
title : HW2b: Koch Curve

*/


void setup() {
  size(800, 800);
  stroke(255, 0, 0);
  frameRate(1);
  background(255);
  noFill();
}

int level=3;
int i = 0;

void kocha(int x, int y, int dia, int round)

{
  pushMatrix();
  translate(x, y);
  translate(-dia/2, dia/3*sin(PI/3));
  subKocha(dia, round);
  translate(dia, 0);
  rotate(-2*PI/3);
  subKocha(dia, round);
  translate(dia, 0);
  rotate(-2*PI/3);
  subKocha(dia, round);
  popMatrix();
}

void subKocha(int X, int round)
{
  if (round > 0)
  {
    round--;    
    subKocha(X/3, round);
    pushMatrix();
    translate(X/3, 0);
    rotate(PI/3);
    subKocha(X/3, round);
    translate(X/3, 0);
    rotate(-2*PI/3);
    subKocha(X/3, round);
    translate(X/3, 0);
    rotate(PI/3);
    subKocha(X/3, round);
    popMatrix();
  } else
  {
    
    beginShape();
    vertex(0, 0);
    vertex(X/3, 0);
    vertex(X/2, X/3*sin(PI/3));
    vertex(2*X/3, 0);
    vertex(X, 0);
    endShape();
   }
}

void draw() {
  
  
  if (i <= level) {

    kocha(width/2, height/2, width/2, i);
    
    i++;
  }
  if (i == level)
  i=0;
}