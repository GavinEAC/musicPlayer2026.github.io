class MusicPlayer{
  
  int divsAmount = 10;
  Rect[] divs = new Rect[divsAmount];
  
  MusicPlayer() {
  } 
  /*
  MusicPlayer(int numberOfRectangles) {
    this.divs = new float[numberOfRectangles * 4];
  } 
  */
  
  void draw() {
    for(int i = 0; i < divs.length; i++) {
      divs[i].drawRect();
    }
  }
  void divsArray() {
    //MAIN RECT
    divs[0] = new Rect(background, "%33", "%33", "%33", "%33", color(255,255,255));
    
    //PANELS
    //Left Panel
    divs[1] = new Rect(divs[0], "0", "0", "%50", "%100", color(255,255,255));
    //Right Panel
    divs[2] = new Rect(divs[0], "%50", "0", "%50", "%100", color(255,255,255));
    
    //SONG INFO RECTS
    //Now Playing Rect
    divs[3] = new Rect(divs[2], "%2", "%2", "%94", "%5", color(255,255,255));
    //Title Rect
    divs[4] = new Rect(divs[2], "%2", "%10", "%40", "%12", color(255,255,255));
    //Artist Rect
    divs[5] = new Rect(divs[2], "%2", "%25", "%30", "%6", color(255,255,255));
    
    //CONTROL BUTTON RECTS
    //Pause Play
    divs[6] = new Rect(divs[2], "%40", "%55", "%20", "0", color(255,255,255));
    //Previous Song
    divs[7] = new Rect(divs[2], "%25", "%60", "%10", "0", color(255,255,255));
    //Next Song
    divs[8] = new Rect(divs[2], "%65", "%60", "%10", "0", color(255,255,255));
    //Progress Bar
    divs[9] = new Rect(divs[2], "%25", "%85", "%50", "%1", color(255,255,255));   
  }
  
  //OUTPUT
  void errorStatment(String description) {
    println(description);
    }
  
  void errorStatment(String description, float variable) {
   println(description, variable);
  }
}
