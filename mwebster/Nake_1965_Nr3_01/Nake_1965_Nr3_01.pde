
/*
//////////////////////////
 RECODE PROCESSING BORDEAUX 
 MARCH 27 2013
 ARTIST : FRIEDER NAKE
 TITLE : 1965 Nr3
 //////////////////////////
 This sketch is part 
 of the ReCode Project.
 www.recodeproject.com
 
 Recode sketch by : mwebster
 
 www.processingbordeaux.org
 www.freeartbureau.org
 
////////////////////////// 
 */

/////////////////////////// GLOBALS ////////////////////////////
import java.util.*; 

Lines[] nake = new Lines[19];
Random gen;
float rand;
float XFAC;

float xPos, yPos;
color[] myc = {
  #887c78, #000000, #a64c37, #b0a7a4, #000000, #b7614d
};
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(450, 660);
  background(#eae4e4);
  smooth();
  noStroke();
  XFAC = 1.3;
  for (int i=0; i<nake.length; i++) {
    int StepRand = (int)random(1, 7);
    nake[i] = new Lines(0, 0, StepRand);
  } 

  for (int i=0; i<nake.length; i++) {
    gen = new Random();
    rand = gen.nextFloat();
    float sdX = 100;
    float meanX = width/4;

    xPos = sdX * rand + meanX;
    pushMatrix();
    translate(xPos*XFAC, random(120, height-200));
    nake[i].render();
    popMatrix();
  }
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
}

/////////////////////////// FUNCTIONS ////////////////////////////

void mousePressed() {
  if (mousePressed)
    background(0);
  setup();
}

void keyPressed() {
  if (key == 's') 
    saveFrame("NAKE_###.png");
}

