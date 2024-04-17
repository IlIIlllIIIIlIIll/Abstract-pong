Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
Boolean playDisplayError=false; //Playholder Boolean for Prototyping on Actual Rotating Device
//
void musicSetup() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String yankeeD = "yankee"; //Another Library enables Reading Folders
  String extension = ".mp3";
  String pathway = "../../Audio/"; //Relative Path
  String path = pathway + yankeeD + extension;
  //Absolute Path use sketchPath
  // See: https://poanchen.github.io/blog/2016/11/15/how-to-add-background-music-in-processing-3.0
  song1 = minim.loadFile( path );
} //End setup()
