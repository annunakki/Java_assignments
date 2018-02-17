void setup  () {
  size (800, 800);
}

final int N =8;
int dx;
void draw () {
  int c =0 ;
  dx= width / N;
  final int dx = width/N;
  for (int y=0; y < height; y+= dx) {
    for ( int x=0; x<width; x += dx) {
      fill (c=255-c);
      rect (x, y, dx, dx);
     }
    c=255-c;
  }
}

void mousePress (){
  println (mouseX, mouseY);
  fill(255,0,0);
  ellipse(mouseX/dx*dx, mouseY/dx*dx,dx,dx);
}

// sierpinski
// coche snow flake
// sine wave