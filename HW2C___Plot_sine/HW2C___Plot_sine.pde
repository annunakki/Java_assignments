/*

 author: Fady Safar
 title: HW2C - Plot sine
 
 */

void setup() {
  size(800, 600);
}

float y;
float radius=100;

void draw() {
  background(255);
  fill (255, 0, 0);
  translate (0, height/2);
  scale (2, 2);
  line(0, 0, width, 0);
  line (width/4, height/2, width/4, -height/2);

  for (float x = 0; x<= 360; x++) {
    y =  sin(radians(x))*(radius);
    point(x+20, y);
  }
}