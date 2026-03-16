int appWidth, appHeight;
int numberOfButtons = 12;
float[] musicButtonDivX = new float[numberOfButtons];

void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population
  int buttonWidth = appWidth / 13;//Number of buttons in a row + 2*padding
  int buttonY = appHeight*3/5;//Most Buttons
  int randomButtonX = 0;
  int randomButtonY = 0;
  float randomButtonDimension = appWidth*1/20;//Changed to Square
  //musicButtonDivX
  musicButtonDivX[0] = randomButtonX;
  for(int i=1; i < musicButtonDivX.length; i++) {
    musicButtonDivX[i] = i * buttonWidth;
  }
}//End Setup

void draw() {}//End Draw

void mousePressed() {}//End mousePressed

void keyPressed() {}//End keyPressed
