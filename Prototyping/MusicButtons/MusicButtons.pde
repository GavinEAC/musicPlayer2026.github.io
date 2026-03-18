int appWidth, appHeight;

void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  //
  populationBuild();
  drawMusicDivs(musicButtonDivX[0], randomButtonY, randomButtonDimension);
  drawMusicDivs(musicButtonDivX, buttonY, buttonWidth);
  for(int i = 0; i < musicButtonDivX.length; i++) {
    drawMusicSymbols(i, musicButtonDivX[i], buttonY, buttonWidth);
  }
}//End Setup

void draw() {}//End Draw

void mousePressed() {}//End mousePressed

void keyPressed() {}//End keyPressed
