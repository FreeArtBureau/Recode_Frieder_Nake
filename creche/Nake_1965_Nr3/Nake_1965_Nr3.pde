
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
 
  Recode sketch by : Charles Rèche
 
 www.processingbordeaux.org
 www.freeartbureau.org
 
////////////////////////// 
 */  
  color[] listColor = new color[3] ;
  int Nbre;
  Rectangle[]listRect;
  int minW, maxW;        // mini and maximum width
  int minH, maxH;         // mini and maximum Height

void setup()
{
  noLoop();
  size( 520, 700);
  background (245,245, 230 );    // blanc papier jaunatre
  // limit of rectangle dimensions
  minW = 20;
  minH = 20;
  maxW = 200;
  maxH = 200;
  // definition of colors
  listColor[0] = color(127, 127, 127);
  listColor[1] = color(150, 50,50 );
  listColor[2] = color(0, 0 ,0 );
  //listColor[3] = color(50, 50, 50); 
  // number of rectangles
  Nbre = int( random(10, 20) );

}

void draw()
{
  
  for (int i=0; i<Nbre; i++)
  {
    int posX = int(random(0, width - maxW));    // position x
    int posY = int(random(0, height - maxH));    // position y
    int W = int(random(minW,maxW));              // Width
    int H = int(random(minH, maxH));              // Heigth
    int C = int(random(0, 3));                  // color in the list
    int d = int(random(1, 4));                  // distance betwen lines
    int o = int(random(0, 2));                  // orientation ( horiz =0, vert =1)
    int s = int(random(0, 3));                  // stroke

    Rectangle myrect = new  Rectangle (W, H, listColor[C], d, o, s); // ( w, h, color, d interligne, orientation, stroke )
    myrect.DrawRect( posX, posY);
    
  }
  
}


void keyPressed()
{
  if ( (key == 's') | (key == 'S') )
  {
    saveFrame("output/RH-####.png");
    println("sauvé dans output");
  }
}

// see saveFrame("output/RH-####.png") et les caractères de génération de nom de fichier 
// # milliseconds from beginning of process

