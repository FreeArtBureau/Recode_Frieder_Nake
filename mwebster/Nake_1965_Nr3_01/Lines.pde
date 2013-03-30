/*
Class for drawing lines
*/

class Lines {
  float x;
  float y;
  color c;
  int len;
  int num;
  float step;

  Lines(float x, float y, int step) {
    this.x = x;
    this.y = y; 
    this.step = step;
    c = color(255);
  }


  void render() {
    num = (int)random(10, 160);
    len = (int)random(5, 80);
    c = getSomeCol();
    stroke(c);
    strokeWeight(0.9);

    float prob = random(5);
    for (int i = 0; i < num; i+=step) {
      if (prob>3) {
        line(x+i, y-len, x+i, y+len);
      }
      else {
        line(x-len, y+i, x+len, y+i);
      }
    }
  } 

  //Random Colour Picker
  color getSomeCol() {
    color pick = myc[(int)random(myc.length)]; 
    return pick;
  }
}

