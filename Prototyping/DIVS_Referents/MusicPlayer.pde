class MusicPlayer {
  
  float[] divs;
  
  MusicPlayer(int numberOfRects) {
    this.divs = new float[numberOfRects*4];
  }
  
  void drawRect(float x, float y, float w, float h){
    rect(x,y,w,h);
  }
  
  
}
