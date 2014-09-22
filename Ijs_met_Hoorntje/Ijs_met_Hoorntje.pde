float dcrs = 75;
float crcl = 60;

void setup() {
  size(200, 200);
  background(255);
}


void draw() {
  for (float i=0; i<=50;i=i+5){
  ellipse(100,80-i,60-i,60-i);
  triangle(75+i, 100, 100, 190, 125, 100);
  }
}
