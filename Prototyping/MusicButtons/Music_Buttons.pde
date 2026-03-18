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

void drawMusicSymbols(int index, float divX, float divY, float divDimension) {
  divX = smallerNum(divX, divDimension);
  divY = smallerNum(divY, divDimension);
  divDimension = smallerNum(divDimension);
  
  if(index == 1 || index == 2 || index == 7 || index == 8) {
    //Redundant if Statement?
    if(index == 1 || index == 2 || index == 7 || index == 8) {drawMusicDivs(divX, divY, divDimension);}
    if(index == 7 || index == 8) {
      float node2X = divX + divDimension;//Made for reasing ease
      divX = node2X - divDimension*1/8;
      divY = divY - divDimension*1/8;
      divDimension = smallerNum(divDimension);
      drawWideTriangle(divX, divY, divDimension);
    }
  }
  if(index == 2) {drawLines(divX, divY, divDimension);}
  if(index == 6) {drawWideTriangle(divX, divY, divDimension);}
  if(index == 7 || index == 8) {drawMusicDivs(smallerNum(divX, divDimension), smallerNum(divY, divDimension), smallerNum(divDimension));}
}//End drawMusicSymbols

float smallerNum(float divXY, float divDimension) {
  return divXY = divXY + divDimension*1/4;
}//End SmallerDivXY

float smallerNum(float divDimension) {
  return divDimension*1/2;
}//End smallerDivDimension

void drawWideTriangle(float divX, float divY, float divDimension) {
  triangle(divX, divY, divX+divDimension, divY + smallerNum(divDimension), divX, divY + divDimension);
  //Apply smallerNum(divDimension) at 3rd parameter for thin triangle
}


void drawLines(float divX, float divY, float divDimension){
  line(divX, divY, divX + divDimension, divY + divDimension);
  line(divX + divDimension, divY, divX, divY + divDimension);
}
