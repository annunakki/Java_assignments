 /***************************************** //<>//
 author: Fady Safar
         HW1c
  */
//*****************************************
/* Write a program to draw an nxn grid on the screen that completely fills the window.  
Your code should use a loop, not repeatedly write the same code.  
Test your code for n=4 and n=8.
Your code should depend on the single line:
final int N = 8;
*/
//****************************************


  size (600,400);
  background (250,250,250);
  stroke(255,0,0);
  strokeWeight(5);
  int n=8;


  for (int x=width/n;x<width; x=x+width/n){
    line(x,0,x,height);
    
    }
  for (int y=height/n;y<height; y=y+height/n){
    line (0,y,width,y);
  }
 