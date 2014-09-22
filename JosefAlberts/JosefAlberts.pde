import processing.pdf.*;

float cubex,cubey,cubeSize;
int count = 0;

int fileSize = 600;
int rgbR,rgbG,rgbB;
void setup(){
  size(fileSize, fileSize, PDF, "JosefAlbers.pdf");
  noStroke();
}
void draw(){
  count++;
  background(180);
  cubeSize = round(random(100,150));
  cubey = 400;
  for(int i = 25;i<101;i=i+25) {
   
  rgbR = randomNum();
  rgbB = randomNum();
  rgbG = randomNum();
  
  cubex = (fileSize / 2) - (cubeSize /2);
  
  fill(rgbR,rgbB,rgbG, 80);
  
  rect(cubex,cubey,cubeSize,cubeSize);
  
  cubeSize = cubeSize + (i*2);
  cubey = cubey - (i*2) + 10;
  }
  
  if(count == 10) {
    exit();
  } else {
    PGraphicsPDF pdf = (PGraphicsPDF) g;
    pdf.nextPage();
  }
}

int randomNum() {
  int a = round(random(20,180));
  return a;
}
