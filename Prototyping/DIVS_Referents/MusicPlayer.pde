class MusicPlayer {
  float[] divs;
  
  MusicPlayer(int numberOfRects) {
    this.divs = new float[numberOfRects*4];
    divs();
    summonMusicPlayer();
  }
  
  void divs() {
    divs[0] = appWidth*1/3;
    divs[1] = appHeight*1/3;
    divs[2] = appWidth*1/3;
    divs[3] = appHeight*1/3;
    
    float referent = divs[2] / 13;
    float[] columns = new float[6];
    for ( int i=0; i<columns.length; i++) {
      if ( i==0 ) columns[0] = divs[0] + referent;
      if ( i>0 && i< 5) columns[i] = columns[i-1] + referent;
      if ( i==5 ) columns[i] = columns[i-1] + referent*2;
    }
    
    float [] rows = new float[3];
    for(int i=0; i < columns.length; i++) {
      if (i == 0) rows[0] = divs[1] + referent;
      if (i == 1) rows[1] = rows[0] + referent*4;
      if (i == 2) rows[2] = rows[1] + referent;
    }
    for(int i=4; i < divs.length; i++){
      //X POSITION
      if(i%4 == 0) {
        if(int(i/4) == 1) {
          divs[i] = columns[0];
        }
        else if(int(i/4) < 7) {
          divs[i] = columns[i/4 - 2];
        }
        else if(int(i/4) == 8 || int(i/4) == 9) {
          divs[i] = columns[5];
        }
      }
      //Y POSITION
      if(i%4 == 1) {
        if(int(i/4) == 1) {
          divs[i] = rows[0];
        }
        else if(int(i/4) < 7) {
          divs[i] = rows[1];
        }
        else if(int(i/4) == 8) {
          divs[i] = rows[0];
        }
        else if(int(i/4) == 9) {
          divs[i] = rows[1];
        }
      }
      //WIDTH
      if(i%4 == 2) {
        if(int(i/4) == 1) {
          divs[i] = columns[4] - columns[0] + referent;
        }
        else if(int(i/4) < 7) {
          divs[i] = referent;
        }
        else if(int(i/4) == 8 || int(i/4) == 9) {
          divs[i] = columns[5] - columns[4] + 2*referent;
        }
      }
      //HEIGHT
      if(i%4 == 3) {
        println(i-3, i-2, i-1, i);
        if(int(i/4) == 1) {
          divs[i] = rows[1] - rows[0] - referent;
        }
        else if(int(i/4) < 7) {
          divs[i] = referent;
        }
        else if(int(i/4) == 8) {
          divs[i] = rows[1] - rows[0] - referent;
        }
         else if(int(i/4) == 9) {
          divs[i] = rows[1] - rows[0] - 2*referent;
        }
      }
    }
  }
  
  
  void summonMusicPlayer() {
    for(int i=0; i < divs.length; i+=4) {
      drawRect(divs[i], divs[i+1], divs[i+2], divs[i+3]);
    }
  }
  
  void drawRect(float x, float y, float w, float h){
    rect(x,y,w,h);
  }
  
  
}
