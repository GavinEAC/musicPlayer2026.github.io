/* Note:
  -

*/

//Global Variables
int numberOfButtons = 12;
float[] musicButtonDivX = new float[numberOfButtons];
int randomButtonY, randomButtonDimension, buttonY, buttonWidth;

void populationBuild() {//End populationBuild
  buttonWidth = appWidth / 13;//Number of buttons in a row + 2*padding
  buttonY = appHeight*3/5;//Most Buttons
  int randomButtonX = 0;
  
  randomButtonDimension = appWidth*1/20;//Changed to Square
  //musicButtonDivX
  musicButtonDivX[0] = randomButtonX;
  for(int i=1; i < musicButtonDivX.length; i++) {
    musicButtonDivX[i] = i * buttonWidth;
  }
}
  
void drawMusicDivs(float x, float y, float d) {
  square(x, y, d);
}//End drawMusicDivs

void drawMusicDivs(float[] x, float y, float d) {
  for(int i=1; i < x.length; i++) {
    square(x[i], y, d);
  }
}//End drawMusicDivs

void drawMusicSymbols(int index, float divX, float divY, float divDimension) {//index from xVar. musicbuttonDivX
  
}//End drawMusicSymbols
