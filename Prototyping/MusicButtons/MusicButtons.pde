int appWidth, appHeight;

void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  //
  populationBuild();
  drawMusicDivs(musicButtonDivX[0], randomButtonY, randomButtonDimension);
  drawMusicDivs(musicButtonDivX, buttonY, buttonWidth);
}//End Setup

void draw() {}//End Draw

void mousePressed() {}//End mousePressed

void keyPressed() {}//End keyPressed
