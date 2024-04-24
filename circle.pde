abstract class Circle extends Shape {
  //Global Variables
  //
  Circle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//end Circle
  //
  //Methods
  abstract void drawing();//end draw
  //
  abstract color backgroundColor();//end Night Mode Color Selector
  //
  color randomColor() {
    color chosenColor = #FFFFFF;
    chosenColor = color(int(random(0, 255)), int(random(0,255)), int(random(0,255)));
    return chosenColor;
  }//end randomColor
  //
}// end Circle
