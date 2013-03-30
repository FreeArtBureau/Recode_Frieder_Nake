class Rectangle
{
  float d,a,w, h, s;
  int c;
  
  Rectangle (float width, float height, int c, float d, float a, float s)
  {
    this.d= d;
    this.a = a;
    this.h =height;
    this.w = width;
    this.c = c;
    this.s = s;
  }
  
  void DrawRect (float x , float y)
  {
    int k = 1;
    
    if ( a==0 ) k = (int) ((h/d)+1);
    if ( a==1 ) k = (int) ((w/d)+1);
    for (int i=0; i<k; i++)
    {
      stroke (c);
      strokeWeight(s);
      if (a == 0) line (x, y+(i*d), x+w, y+(i*d));
      if (a == 1) line (x+(i*d), y, x+(i*d), y+h);
    }
  }
  
}


