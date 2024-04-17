abstract class Rectangle extends Shape {
  //Global Variables
  //
  Rectangle(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }
  //
  //Methods
  abstract void drawing();
  //
  abstract color backgroundColor(); 
  //
  color randomColor() {
    color chosenColor;
    chosenColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
    return chosenColor;
  }//end randomColor
  //
}//end Rectangle
