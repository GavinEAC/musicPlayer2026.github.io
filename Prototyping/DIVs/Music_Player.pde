class MusicPlayer{
  
  float[] divs;
  
  MusicPlayer() {
  } 
  
  MusicPlayer(int numberOfRectangles) {
    this.divs = new float[numberOfRectangles * 4];
  } 
  
  void draw() {
    errorStatment("Hello World");
  }
  
  void rect(float x, float y, float w, float h) {
    rect(x, y, w, h);
  }
  
  void divsArray() {
    
  }
  
  //OUTPUT
  void errorStatment(String description) {
    println(description);
    }
  
  void errorStatment(String description, float variable) {
   println(description, variable);
  }
}
