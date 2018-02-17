/*

    author: Fady Safar
    title: HW2a-Sierpinski
    
*/



int lvl=5;

void setup () {
  size (600, 600);
}

void sierpinski (float x1, float y1, float x2, float y2, float x3, float y3, float lvl) {
  if (lvl==0) {
    triangle (x1, y1, x2, y2, x3, y3);
    print("done!");
    return;
  }
  
  float x33, y33, x11, y11, x22, y22;
  x11=(x1+x2)/2;
  y11=(y1+y2)/2;
  x22=(x2+x3)/2;
  y22=(y2+y3)/2;
  x33=(x1+x3)/2;
  y33=(y1+y3)/2;

  // triangle (x33, y33, x11, y11, x22, y22);

  sierpinski (x1, y1, x11, y11, x33, y33, lvl-1);

  sierpinski (x11, y11, x2, y2, x22, y22, lvl-1);

  sierpinski (x33, y33, x22, y22, x3, y3, lvl-1);
}



void draw () {
  background (255);
  fill (255, 0, 0);

  sierpinski (width/2, 100, 100, height-100, width-100, height-100, lvl);
  
}