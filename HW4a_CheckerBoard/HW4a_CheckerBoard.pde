/* //<>//

 author: Fady Safar
 title: HW4a - Processing - Checkers, Chess or Go (Wei Qi)
 
 */


void setup () {
  size (600, 600);
  //background (0, 0, 0);
}

int n=8; // number of quares per row and column 
int squareSize = (width*6)/n;
int sw =1;
int [][]pieceArray = new int [8][8];
int [][]boardArray= new int[8][8];
float center = squareSize/2;
boolean initialized = false;

int red=2;
int white=1;
int black=0;
int empty =0;
int numWhite=0;
int radius= squareSize-20;


void initializeBoard() {

  //draw board squares and initialize the board array
  background(0);
  for (int y=0; y <n; y++) {
    for (int x=sw; x < n; x+=2) {
      fill(255, 0, 0);
      stroke(0);
      boardArray[x][y]=red;
      rect (x*squareSize, y*squareSize, squareSize, squareSize);
    }

    if (sw == 0) {
      sw=1;
    } else {
      sw=0;
    }
  }


  //initiate white pieces

  for (int i=0; i<5; i++) {
    for (int j=0; j<n; j++) {
      //  println((i+j)%2);
      if ((i+j)%2 == 0) {
        pieceArray[j][i]=empty;
      } else {
        if (numWhite++ > 23) {
          pieceArray[j][i] = empty;
        } else {
          pieceArray[j][i]=white;
          numWhite++;
        }
      }
    }
  }

  // initiate red pieces

  for (int ii=n-3; ii<n; ii++) {
    for (int jj=0; jj<n; jj=jj+1) {

      if ((ii+jj)%2 == 1) {
        pieceArray[jj][ii]=red;
      } else { 
        pieceArray[jj][ii]=empty;
      }
    }
  }
}

void drawBoard() {
  background(0);
  for (int y=0; y <n; y++) {
    for (int x=sw; x < n; x+=2) {
      fill(255, 0, 0);
      stroke(0);
      boardArray[x][y]=red;
      rect (x*squareSize, y*squareSize, squareSize, squareSize);
    }

    if (sw == 0) {
      sw=1;
    } else {
      sw=0;
    }
  }
}

void placePieces() {

  for (int i=0; i<n; i++) {
    for (int j=0; j<n; j++) {

      if (boardArray[i][j]==red) {
        fill(255, 0, 0);
        rect (i*squareSize, j*squareSize, squareSize, squareSize);
      } else {
        fill(0);
        rect (i*squareSize, j*squareSize, squareSize, squareSize);
      }
      if (pieceArray[i][j] != empty) {
        if (pieceArray[i][j] == red) {
          fill(150, 0, 0);
        } else {
          fill(255, 255, 255);
        }
        stroke(0);
        ellipse(i*squareSize+center, j*squareSize+center, radius, radius);
      }
    }
  }
}

int pieceColor=0;

void mousePressed () {
  int x= ceil(mouseX/squareSize);
  int y= ceil(mouseY/squareSize);

  println("Row="+(x+1));
  println("Col="+(y+1));

  pieceColor=pieceArray[x][y];
  pieceArray[x][y]=empty;


  placePieces();
  
   if (pieceColor == red) {
    fill(160, 0, 0);
  } else if (pieceColor == white) { 
    fill(255, 255, 255);
  } else { 
    noFill();
    noStroke();
  }


  ellipse(mouseX, mouseY, radius, radius);
}

void mouseDragged() {


  println(mouseX);
  println(mouseY);

  placePieces();

  if (pieceColor == red) {
    fill(150, 0, 0);
  } else if (pieceColor == white) { 
    fill(255, 255, 255);
  } else { 
    noFill();
    noStroke();
  }


  ellipse(mouseX, mouseY, radius, radius);
}


void mouseReleased() {
  int x= ceil(mouseX/squareSize);
  int y= ceil(mouseY/squareSize);


  pieceArray[x][y]=pieceColor;

  placePieces();
}


void draw() {

  if (initialized) { 
    return;
  } else {
    initializeBoard();
    initialized = true;
  }
  placePieces();
}