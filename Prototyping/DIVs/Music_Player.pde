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
      divs[i].drawRect(color(255,255,255));
    }
  }
  void divsArray() {
    //MAIN RECT
    divs[0] = new Rect(background, "%33", "%33", "%33", "%33");
    
    //PANELS
    //Left Panel
    divs[1] = new Rect(divs[0], "0", "0", "%50", "%100");
    //Right Panel
    divs[2] = new Rect(divs[0], "%50", "0", "%50", "%100");
    
    //SONG INFO RECTS
    //Now Playing Rect
    divs[3] = new Rect(divs[2], "%2", "%2", "%94", "%5");
    //Title Rect
    divs[4] = new Rect(divs[2], "%2", "%10", "%40", "%12");
    //Artist Rect
    divs[5] = new Rect(divs[2], "%2", "%25", "%30", "%6");
    
    //CONTROL BUTTON RECTS
    //Pause Play
    divs[6] = new Rect(divs[2], "%40", "%55", "%20", "0");
    divs[6].rectHeight = divs[6].rectWidth;
    //Previous Song
    divs[7] = new Rect(divs[2], "%25", "%60", "%10", "0");
    divs[7].rectHeight = divs[7].rectWidth;
    //Next Song
    divs[8] = new Rect(divs[2], "%65", "%60", "%10", "0");
    divs[8].rectHeight = divs[8].rectWidth;
    //Progress Bar
    divs[9] = new Rect(divs[2], "%25", "%85", "%50", "%1");
    
  }
  
  //OUTPUT
  void errorStatment(String description) {
    println(description);
    }
  
  void errorStatment(String description, float variable) {
   println(description, variable);
  }
}
