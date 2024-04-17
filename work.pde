class Firework extends Circle {
  //Global Variables
  float  gravity = 0.0;
  float xVelocity, yVelocity;
  //
  Firework (float x, float y, float w, float h, color c, float g) {
    super(x, y, w, h, c);
    this.x = x;
    this.y = y;
    this.c = randomColor(); //RGB color
    this.w = random(firstBall.w/1.1);
    this.xVelocity = random(-5, 5);
    this.yVelocity = random(-5, 5);
    gravity = g;
  //Add gravity to how the Fireworks.move()
  }//Fireworks
  //
  //Methods
  void drawing() {
    fill(c);
    ellipse(x, y, w, w);
    fill(colorReset);
    moving();
  }//end draw
  //
  color backgroundColor() {
    color nightMode = 0;
    return nightMode;
  }//end backgroundColor
  //
  void bounce() {
    if (x <= ((w/2)+(width/10)) || x >= ((width*9)/10)-(w/2)) (xVelocity) *= -1;
    if (y <= ((pongPlayArea.y)+(w/2)) || y >= (height*8/10)-(w/2)) (yVelocity) *= -1;
  }//end bounce
  void moving() {
    yVelocity += gravity;
    x += (xVelocity);
    y += (yVelocity);
    //for (int i=0; i < firework.length; i++) firework[i].ballDiameter -= (ballDiameter/4);
    bounce();
  }//end moving
}//end Firework
