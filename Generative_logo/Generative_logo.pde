import processing.pdf.*;

void setup() {
  
  size(600, 600);
  beginRecord(PDF, "generatief_logo_####.pdf"); 
  background(170);
  noFill();
  smooth();
}

// Global Variables
float x = 0;
float y = 0;
float deg = 1;
float st = 1;
int count = 0;
int total = Math.round(random(300, 2000));
float randomX = random(0.1,1);
float randomY = random(0.1,1);
float randomD = random(0.1,1);
float randomS = random(0.007,0.07);

void draw() {
  if (count > total) { noLoop();
      text("Size increment: " + randomS + ". Angle: " + randomD +". X Increment: " + randomX + ". Y Increment: " + randomY, 0 + 20, height - 20);  
      text("Number of ellipses: " + total, 0+20, height-10);
      endRecord();
  }
  strokeWeight(st);
  translate(width/2, height/2);  // translate to center of screen
  rotate(deg);
 
  point(x, y);
  x = x + randomX;
  y = y + randomY;
  deg = deg + randomD;
  st = st + randomS;
  count ++;
 
  
  
}
