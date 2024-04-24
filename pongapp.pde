//Global Variables
color strokeColor = #FFFFFF;
color background = #002D04;
color secondaryColor = #228B22;
PongPlayArea pongPlayArea;
Firework[] firework = new Firework[10];
Ball firstBall;
Paddle firstPaddle, secondPaddle;
//
void setup() {
//size(400, 700);//portrait
  //size(700, 400);//landscape
  fullScreen();
  display();
  pongPlayArea = new PongPlayArea(width/2-((width*2)/5), height/10, (width*4)/5, (height*7)/10, secondaryColor);
  firstBall = new Ball(pongPlayArea.x+(pongPlayArea.w/2)-(height/50), pongPlayArea.y+(pongPlayArea.h/2)-(height/50), 0, 0, 0);
  for (int i=0; i < firework.length; i++) firework[i] = new Firework(width*1.1, height*1.1, 0, 0, 0, 0.5);
  firstPaddle = new Paddle(0, 0, 0, 0, 0, width/10);
  firstPaddle = new Paddle(0, 0, 0, 0, 0, width/10);
  secondPaddle = new Paddle(0, 0, 0, 0, 0, ((width*9)/10));
  firstBall.collisionPlayArea(pongPlayArea.y, pongPlayArea.h+pongPlayArea.y);
}//end setup
//
void draw() {
  background(background);
  pongPlayArea.drawing();
  for (int i=0; i < firework.length; i++) firework[i].drawing();
  firstBall.drawing();
  firstPaddle.drawing();
  secondPaddle.drawing();
  firstBall.collisionUpdate(firstPaddle.x, firstPaddle.y, firstPaddle.w, firstPaddle.h, secondPaddle.x, secondPaddle.y, secondPaddle.w, secondPaddle.h);
  explosions();
  //firework.moving();
}//end draw
//
void mousePressed() {}//end mousePressed
//
void keyReleased() {
  firstPaddle.paddleKeyReleasedWSAD();//stops left paddle movement
  secondPaddle.paddleKeyReleasedARROWKEYS();//stops right paddle movement}//end keyReleased
}
//
void keyPressed() {
  firstPaddle.paddleKeyPressedWASD();
  secondPaddle.paddleKeyPressedARROWKEYS();
}//end keyPressed
//
void explosions() { //firework effect when goal region hit
  if (firstBall.x <= ((firstBall.w/2)+(width/10)) || firstBall.x >= ((width*9)/10)-(firstBall.w/2)) {
    for (int i=0; i < firework.length; i++) 
    firework[i] = new Firework(firstBall.x, firstBall.y, float(height/25), float(height/25), 0, 0.5); //drawing multiple balls
  }
  /*if (!cheatBall.disappear) {
    if (cheatBall.ballX <= ((cheatBall.ballDiameter/2)+(width/10)) || cheatBall.ballX >= ((width*9)/10)-(cheatBall.ballDiameter/2)) {
      for (int i=0; i < firework.length; i++) 
      firework[i] = new Ball(cheatBall.ballX, cheatBall.ballY, 0.5); //drawing multiple balls
    }
  }*/
}//end explosions
//end pongApp
