//ALL IMPORTANT SCREEN RECT. ALL RECTS ARE DESCENDANT
parentRect screen;

//Music Controller Rects
Rect musicControlRect;
Rect songsRect;
Rect controlsRect;

//Music Controller Divs
void createMusicDivs() {
  musicControlRect = new Rect(screen, "%33", "%33", "f1/3", "f1/3");
  songsRect = new Rect(musicControlRect, "0", "0", "%50", "%100");
  songsRect.rectColor = color(25,25,255);
  controlsRect = new Rect(musicControlRect, "%50", "0", "%50", "%100");
  controlsRect.rectColor = color(25,255,100);
}

void drawMusicDivs(){
  musicControlRect.drawRect();
  songsRect.drawRect();
  controlsRect.drawRect();
}
  
