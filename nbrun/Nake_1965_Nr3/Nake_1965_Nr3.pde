
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
 
 Recode sketch by : Nicolas Brun
 
 www.processingbordeaux.org
 www.freeartbureau.org
 
////////////////////////// 
*/

int marg= 60;//marges

int rminW = 10;//valeur mininum de largeur du rectangle
int rminH = 30;//valeur mininum de hauteur du rectangle
int rmaxW= 200;//valeur maximum de largeur du rectangle
int rmaxH= 300;//valeur maximum de hauteur du rectangle

void setup(){
 size(400, 600);
 noLoop();
 rectMode(CENTER);
}

void draw(){
 background(230);

 int n = int(random(80, 100)); 
  color[] myColors;
 
     myColors= new color[3];
     myColors[0] = color (0, 0, 0);
     myColors[1] = color (64, 64, 64);
     myColors[2] = color (167, 76, 55);
     //tableau de couleurs noir, gris & rouge
   for(int i= 1; i<=n; i++){ 
    //nombre de rectangle
     
     int x = int(random(marg*2, width-marg));
     int y = int(random(marg*2, height-marg)); //position des rectangles
     
     int w = int(random(rminW, rmaxW-marg/*-(marg*2+x)*/));
     int h = int(random(rminH, rmaxH-marg/*-(marg*2+y)*/));//dimensions des rectangles
     
     println("n= "+ n + "|" + "x ="+ x+ "|" + "y ="+ y);
     if( x + w > width-marg){
       w = w - marg;
     }
     if( y + h > height-marg){
       h = h - marg;
     }
    int c= int(random(myColors.length));
    stroke(myColors[c]);//choix aléatoire d'une couleur
    strokeCap(SQUARE);
    
    int gap= int(random(1,6));//choix de l'espacement entre les lignes
    
    int a= int(random(0,2));//choix de l'orientation des lignes
    
    int s= int(random(1, 2));//choix de l'épaisseur des lignes
    
    
     //rect(x, y, w, h);
    if (a == 0){
        for( int hor= y-h/2; hor < h; hor = hor+gap)//variable d'incrémentation horizontale
        {
          myHorHatch(x, y, w, h, s, hor);
        }
       
   }else{
      for ( int ver= x-w/2; ver < w; ver = ver+gap)//variable d'incrémentation verticale
      {
        myVerHatch(x, y, w, h, s, ver);
      }
     }
   }
}
void myHorHatch(int nx,int ny,int nw,int nh,int ns, int nhor){
  strokeWeight(ns);
   line(nx-nw/2, nhor, nx+nw/2, nhor);
}
void myVerHatch(int nx,int ny,int nw,int nh,int ns, int nver){
  strokeWeight(ns);
   line( nver, ny-nh/2 , nver, ny+nh/2);
}
void mousePressed(){
  println("redraw");
  redraw();
  
}
