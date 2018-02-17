/*
  author: Fady Safar
          HW1b
*/

void setup (){
  for (int i = 0; i < 10; i++) {
    print(i);
    println();
  }
  for (int x=1;x<100; x=x+2){
     print (x,"");
  }
  println();
  for (int x=1;x<=32768; x=x+x){
    print (x,"");
  }
  
  exit();
}