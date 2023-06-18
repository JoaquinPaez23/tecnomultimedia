PImage imagenuno;

int x=400; 
int y=0;
int a=0;


void setup() {
  size(800,400);
  
imagenuno = loadImage ("arteoptico.jpeg");
image(imagenuno, 0,0,400,400);

}

  
  void draw() {
    
    // primer cuadrado 
for( int x = 400; x < 800; x+=50){  
for (int y = 0; y < 400; y=y+50) { 
  noFill();
  rect( x,y,25,25);
 
}

 }
 
 // segundo cuadrado 
  for( int x = 425; x < 800; x+=50){  
for (int y = 0; y < 400; y=y+50 ) {
 fill(255);
  rect( x,y,25,25);
}
  } 
  
  // tercer cuadrado 
  for( int x = 400; x < 800; x+=50){  
for (int y = 25; y < 400; y=y+50 ){
  fill(0);  
  rect( x,y,25,25);
  
  }
  }
  
 // cuarto cuadrado 
 for( int x = 425; x < 800; x+=50){  
for (int y = 25; y < 400; y=y+50 ) {
  fill(160);
  rect( x,y,25,25);
 
}

 }
 
//for( int x = 400; x < 800; x+=50){  
//for (int y = 0; y < 400; y=y+50) {
 // rect( x,y,25,25);
 


 
 }
  
  
  
  
  
  
  
  
  
  
