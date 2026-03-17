int appWidth, appHeight;

void setup() {
  fullScreen();
  appWidth = width;
  appHeight = height;
  //
  populationBuild();
  drawMusicDivs(musicButtonDivX[0], randomButtonY, randomButtonDimension);
  drawMusicDivs(musicButtonDivX, buttonY, buttonWidth);
  drawMusicSymbols(1, musicButtonDivX[1], buttonY, buttonWidth);
  drawMusicSymbols(2, musicButtonDivX[2], buttonY, buttonWidth);
  drawMusicSymbols(6, musicButtonDivX[6], buttonY, buttonWidth);
  drawMusicSymbols(7, musicButtonDivX[7], buttonY, buttonWidth);
  drawMusicSymbols(8, musicButtonDivX[8], buttonY, buttonWidth);
}//End Setup

void draw() {}//End Draw

void mousePressed() {}//End mousePressed

void keyPressed() {}//End keyPressed
