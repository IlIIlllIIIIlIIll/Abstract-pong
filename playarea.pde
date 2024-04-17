class PongPlayArea extends Rectangle {
  //Global Variables
  //
  PongPlayArea (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end PongPlayArea
  //
  //Methods
  void drawing() {
    fill(c);
    noStroke();
    rect(x, y, w, h);
    fill(colorReset);
  }//end drawing
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//backgroundColor
  //
  /* Features:
   - Give Ball top and bottom lines to bounce off of
   - Give Ball net dimensions & when it scores
   - Give Paddle edge of net, what it defends
 */
}//end PongPlayArea
