int appWidth, appHeight;
Boolean displayCheck = false;
//
PFont generalFont;
int geometryErrorX, geometryErrorY, geometryErrorWidth, geometryErrorHeight; //Layout rect()
String geometryErrorText = "Bru, turn your phun!";
color purpleInk = #2C08FF; //Not nice for Night Mode, Blue Content
color whiteInk = #FFFFFF;
//
void displayCheck() {
  displayCheck = ( appWidth >= appHeight ) ? false : true ;
  if ( displayCheck==true ) {
    playDisplayError=true;
  } else {
    playDisplayError=false;
  }
}
//
void display() {
  //Display Orientation: Landscape, not portrait nor square (sort of)
  //println(width, height, displayWidth, displayHeight);
  appWidth = width; //Best Practice: do not manipulate key variables
  appHeight = height;
  displayCheck();
  textSetup(); //See Below
  if ( displayCheck==true ) song1.loop(0);
} //End Display Method
//
void displayLandscape() { //Display ERROR Check in draw()
  //println("CAR!!!"); //Developer ONLY Notification
  //Add text, image, sounds, etc. to the CANVAS telling Gamer, not developer
  //Add MINIM Library for Sounds or Song
  //Text is Manditory for Scoreboard & Personalization (consider it here)
  textDraw(appHeight, purpleInk, CENTER, CENTER, generalFont, geometryErrorText, geometryErrorX, geometryErrorY, geometryErrorWidth, geometryErrorHeight);
  //
  //Sound ERROR: how do you play a song once and ckeck it in void draw()
  //
} //End Display Landscape ERROR Check
//
void textSetup()
{
  //println("Start of Console");
  //
  /*Fonts from OS
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  generalFont = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
  //Populating Variables for Layout
  int referentMeasureX = appWidth*1/2;
  int referentMeasureY = appHeight*1/2;
  int textCenterX = int( textWidth(geometryErrorText)*1/2 );
  //int textCenterY
  geometryErrorX = referentMeasureX-textCenterX;
  geometryErrorY = referentMeasureY; //ERROR, not centred
  geometryErrorWidth = int( textWidth(geometryErrorText) );
  geometryErrorHeight = height*1/10;
  //
  //Layout Text, inspect rect() variables
  //rect( geometryErrorX, geometryErrorY, geometryErrorWidth, geometryErrorHeight );
  //
}//End textSetup()
//
void preDrawText(float height, color ink, int alignHorizontal, int alignVertical, PFont font)
{
  fill(ink); //Ink, hexidecimal copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
}//End preDrawText
//
void textDraw(float height, color ink, int alignHorizontal, int alignVertical, PFont font, String string, float rectX, float rectY, float rectWidth, float rectHeight)
{
  preDrawText(height, ink, alignHorizontal, alignVertical, font);
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(textCalculator(height, string, rectWidth));
  text(string, rectX, rectY, rectWidth, rectHeight);
  textReset();
}//End textDraw
//
void textReset()
{
  fill(whiteInk); //reset
}//End textReset()
//
float textCalculator(float size, String string, float rectWidth)
{
  textSize(size); //For textWidth sizing
  while ( textWidth(string) > rectWidth)
  {
    size = size * 0.99; //size-- will do pixels
    textSize(size);
  }//End WHILE;
  //size =  size * 0.5; //different fonts and string sizes need extra shrinking
  return size; //Purpose of Calculator
}//End textCalculator
