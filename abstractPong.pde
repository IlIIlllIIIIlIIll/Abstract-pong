import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//
//Global Variables
//
void setup() {
  size(400, 600); //Landscape for testing
  //fullScreen();
  musicSetup();
  display();
} //End setup
//
void draw() {
  //ERROR Check of Display: Landscape ONLY
  if ( displayCheck==true ) displayLandscape(); //Bru, turn your phun
  //ERROR: play display sound effect from draw()
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End Driver
