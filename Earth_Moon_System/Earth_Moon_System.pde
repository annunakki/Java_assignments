/*

 author: Fady Safar 
 title: earth and moon
 
 */

PShape earth;
PShape moon;


void setup() {
  size (1024, 1024, P3D);
  background(50);
  frameRate(60);
  noStroke();
  sphereDetail(500);
  //planets

  // Load image from a web server
  PImage imgEarth = loadImage("https://preview.ibb.co/nG5UFc/earth_1k.jpg", "jpg");
  PImage imgMoon=loadImage("https://preview.ibb.co/fafJ8x/Moon_8k.jpg", "jpg");

  earth=createShape(SPHERE, 500);
  moon=createShape(SPHERE, 500*0.27);
  earth.setTexture(imgEarth);
  moon.setTexture(imgMoon);
}

float DEG2RAD=PI/180;
float rot=0;


void draw() {
  background (50);
  pushMatrix();

  translate(width/2, height/2, -3000);
  rotateZ(-23.5 * DEG2RAD);
  rotateY(rot); // earth spining speed
  shape(earth);
  popMatrix();

  pushMatrix();
  rotateZ( -5*DEG2RAD);
  translate(width/2, height/2, -3000);
  rotateY(rot/10);  // moon arounf the earth orbit speed , real 28 times slower
  translate(2000, 0, 0);
  shape(moon);
  popMatrix();

  rot+=0.03;
}