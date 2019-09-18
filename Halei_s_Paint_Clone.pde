color cursorcolor = 0;
int green = 255;
int red = 255;
int blue= 255;
int step = 5;

void setup() {
  size(600, 400);
  background(255);
}



void draw() {
  noStroke();
  //less green button
  fill(0,0,0);
  rect(0,0,30,30);
  if (mousePressed && mouseX<30 && mouseY<30){
    green = green -step;
  } 
  //more green button
  fill(0,green,0);
  rect(50,0,30,30);
  if (mousePressed && 80<mouseX && mouseX<110 && mouseY<30){
     green = green +step;
  }
  
    //less red button
  fill(0,0,0);
  rect(0,35,30,30);
  if (mousePressed && mouseX<30 && mouseY<60){
    red = red -step;
  } 
  //more red button
  fill(red,0,0);
  rect(50,35,30,30);
  if (mousePressed && 30<mouseX && mouseX<60 && mouseY<60){
     red = red +step;
  }
  
      //less blue button
  fill(0,0,0);
  rect(0,70,30,30);
  if (mousePressed && mouseX<30 && mouseY<90){
    blue = blue -step;
  } 
  //more blue button
  fill(0,0,blue);
  rect(50,70,30,30);
  if (mousePressed && 30<mouseX && mouseX< 90 && mouseY<90){
     blue = blue +step;
     
  }
  cursorcolor = color(red,green,blue); 
  
  //drawing part
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, 8, 8);
  }
  
  
  println(mouseX, mouseY);
  
  
  
  
  
  
  
}
