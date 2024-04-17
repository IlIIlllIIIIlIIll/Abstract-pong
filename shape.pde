abstract class Shape {
  //Global Variables
  float x;//X-Variable, Position
  float y;//Y-Variable, Position
  float w;//Width
  float h;//Height
  color c, colorReset;//Shape Color
  //
  //Constructor
  Shape(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    colorReset = backgroundColor();
  }//end Constructor
  //
  //Methods
  abstract void drawing();//Empty draw()
  //
  abstract color backgroundColor();//end Night Mode Color Selector
  //
}//end Shape
