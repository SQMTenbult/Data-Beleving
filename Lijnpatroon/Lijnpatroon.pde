float[][] vclrs = { //Array with color values for the vertical lines
  {220,31,24}, //Red
  {128,100,172}, //Purple
  {39,52,142}, //Blue
  {225,104,0}, //Beige
  {77,137,11}, //Green
  {83,188,188}, //Light Blue
};

float[][] hclrs = { //Array with color values for the horizontal lines
  {220,31,24}, //Red
  {187,167,212}, //Purple
  {39,52,142}, //Blue
  {244,198,149}, //Beige
  {77,137,11}, //Green
  {183,207,209}, //Light Blue
};

int controller = 8; //Width of the line and distance between the lines
int hlinedistance = controller; //Horizontal distance to place the next line
int vlinedistance = controller; //Vertical distance to place the next line

void setup() {
   size(576,480);
   background(255);
   strokeWeight(controller); //Stroke of the controller
}

void draw() {
  for(int i=0;i<6;i=i+1) {
      
      stroke(vclrs[i][0], vclrs[i][1], vclrs[i][2]);
      line(vlinedistance, 0, vlinedistance, displayHeight);
      vlinedistance = vlinedistance + (controller + controller);
      
      line(0, hlinedistance, displayWidth, hlinedistance);
      stroke(hclrs[i][0], hclrs[i][1], hclrs[i][2]);
      hlinedistance = hlinedistance + (controller + controller);
      
    }
}
