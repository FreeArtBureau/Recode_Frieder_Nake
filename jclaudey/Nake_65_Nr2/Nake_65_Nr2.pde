
/*
//////////////////////////
 RECODE PROCESSING BORDEAUX 
 MARCH 27 2013
 ARTIST : FRIEDER NAKE
 TITLE : 13/09/65 Nr2
 aka HOMMAGE À PAUL KLEE
 //////////////////////////
 This sketch is part 
 of the ReCode Project.
 www.recodeproject.com
 
 Recode sketch by : Jofrey Claudey
 
 www.processingbordeaux.org
 www.freeartbureau.org
 
 ////////////////////////// 
 */

void setup() {
  size(600, 600);
  noLoop();
  background(255);
}

int cols = 6;
int rows = 10;
int randW, randH;
float xH, xB;
PVector[][] coord = new PVector[rows+1][cols+1];

void draw() {
  for (int l=0; l<=rows; l++) {
    for (int s=0; s<=cols; s++) {
      if (l==0||l==rows) { 
        randH = 0;
      } 
      else { 
        randH = int(.6*random(0.1, 10));
      }
      if (s==0||s==cols) { 
        randW = 0;
      } 
      else { 
        randW = int(.6*random(0.1, 10));
      }
      coord[l][s] = new PVector(((width/cols)+randW)*s, ((height/rows)+randH)*l);
    }
  }
  for (int l=1; l<rows; l++) {
    for (int s=1; s<=cols; s++) {
      line(coord[l][s-1].x, coord[l][s-1].y, coord[l][s].x, coord[l][s].y);
    }
  }
  for (int l=0; l<rows; l++) {
    for (int s=0; s<cols; s++) {
      int sw = int(random(0, 4));
      for (int r=0; r<int(random(5,100)); r++) {
        if (sw==0) {
          xH = random(coord[l][s].x, coord[l+1][s+1].x);
          xB = random(coord[l+1][s].x, coord[l+1][s+1].x);
        } 
        else if (sw==1) {
          xH = xB = random(coord[l][s].x, coord[l+1][s+1].x);
        }
        if (sw==0||sw==1) {
          line(xH, coordY(coord[l][s], coord[l][s+1], xH), xB, coordY(coord[l+1][s], coord[l+1][s+1], xB));
        }
      }
    }
  }
  ellipseMode(CENTER);
  noFill();
  for (int c=0; c<8; c++) {
    int d = int(random(2, 150));
    ellipse(random(d, width-d), random(d, height-d), d, d);
  }
}

float coordY(PVector _p1, PVector _p2, float _x) {
  float a = (_p1.y-_p2.y)/(_p1.x-_p2.x);
  float b = _p1.y-(a*_p1.x);
  return int(a*_x+b);
}

