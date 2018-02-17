/*

    author: Fady Safar
    title: HW2B - Mystery sum
    
*/

float sum1=0;
float sum2=0;

void setup(){

for (int n=1;n<=100000;n*=10){
  print ("for n=",n);
  println();
  
for (float i=1; i<=n; i++){
  sum1= sum1 + ( 1/(i*i));
}
print (Math.sqrt(6*sum1));
println();


for (float i=n ; i>=n; i--){
  sum2=sum2 + (1/(i*i));
}
print (Math.sqrt(6*sum2));
println();
}
}