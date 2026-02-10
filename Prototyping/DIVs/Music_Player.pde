class MusicPlayer{
  int xPos = 0;
  int yPos = 0;
  int xVelocity = 3;
  int yVelocity = 3;
  MusicPlayer(int x, int y) {
    this.xPos = x;
    this.yPos = y;
    fill(color(0,255,255));
  } 
  
  void draw() {
    xPos+=xVelocity;
    yPos+=yVelocity;
    rect(xPos,yPos,100,100);
    if(xPos <= 0 || xPos >= appWidth - 100) {
      xVelocity *= -1;
    }
    
    if(yPos <= 0 || yPos >= appHeight - 100) {
      yVelocity *= -1;
    }
  }
}
