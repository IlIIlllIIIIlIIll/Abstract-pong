class Paddle extends Rectangle {
  //Global Variables
  float knotX, knotY, knotWidth, knotHeight;
  float paddleTravel;
  boolean paddleUp = false, paddleDown = false;//keyPressed in draw
  float playAreaY;//smallest Y value for paddle movement height/10
  float playAreaHeight;
  //
  Paddle (float x, float y, float w, float h, color c, float startPosition) {
    super(x, y, w, h, c);
    knotWidth = (firstBall.w*3);
    this.w = (firstBall.w/2); //Ball Radius
    playAreaY = pongPlayArea.y;//smallest Y value for paddle movement height/10
    playAreaHeight = pongPlayArea.h;
    if ( startPosition == width/10 ) knotX = startPosition; //Adding to the knotX
    if ( startPosition == (((width*9)/10)) ) knotX = startPosition - (knotWidth*2) - w; //Subtracting the knotX
    this.x = (knotX) + (knotWidth); //netX has two values, fix ERROR
    if ( startPosition == width ) knotX = startPosition - knotWidth;
    float startPositionDifferent = ( 0.25 );//has to be decimal
    this.h = (playAreaHeight * startPositionDifferent);
    this.y = (playAreaY/2) + (playAreaHeight/2) - (h/2);
    this.paddleTravel = (playAreaHeight/50);//paddle speed
    this.c = randomColor();
  }//end Paddle
  //
  //Methods
  void drawing() {
    fill(c);
    rect(x, y, w, h);
    fill(colorReset);
    paddleMove();
  }//end draw
  void paddleMove() {
    if (paddleUp) paddleUp();
    if (paddleDown) paddleDown();
  }//end paddleMove
  void paddleUp() {
    y -= (paddleTravel);//moving up
    if (y < playAreaY) y = playAreaY;//error catch: will not go off screen
  }//end paddleUp
  void paddleDown() {
    y += (paddleTravel);//moving down
    if (y > playAreaY+playAreaHeight-h) y = playAreaY+playAreaHeight-h;//error catch: will not go off screen
  }//end paddleDown
  void paddleKeyPressedWASD() {
    if (key == 'w' || key == 'W') firstPaddle.paddleUp = true;
    if (key == 's' || key == 'S') firstPaddle.paddleDown = true; 
  }//end paddleKeyPressedWASD
  void paddleKeyPressedARROWKEYS() {
    if (key == CODED & keyCode == UP) secondPaddle.paddleUp = true;
    if (key == CODED & keyCode == DOWN) secondPaddle.paddleDown = true;
  }//end paddleKeyPressedARROWKEYS
  void paddleKeyReleasedWSAD() {
    if (key == 'w' || key == 'W') firstPaddle.paddleUp = false;
    if (key == 's' || key == 'S') firstPaddle.paddleDown = false; 
  }//end paddleKeyReleasedWSAD
  void paddleKeyReleasedARROWKEYS() {
    if (key == CODED & keyCode == UP) secondPaddle.paddleUp = false;
    if (key == CODED & keyCode == DOWN) secondPaddle.paddleDown = false;
  }//end paddleKeyReleasedARROWKEYS
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
  //
  /* Features:
   - Give Ball X-variable to bounce between two y-variables
   */
}//end Paddle
