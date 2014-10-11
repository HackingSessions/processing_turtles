
class Turtle {
  float x,y,h;
  color c;
  boolean pendown;
  public Turtle() {
    x = 150;
    y= 150;
    h=0;
    pendown = false;
    c = color(255,0,0);
  }

  public Turtle(float x, float y){
    this.x = x; this.y=y;
  }

  public Turtle(float x, float y, color c){
    this.x = x; this.y = y; this.c = c;
  }

  void seColor(color c){
    this.c =c ;
  }
  
  void setHeading(float d) {
    h = d;
  }

  void left(float d) {
    h=h-d;
  }
  void right(float d) {
    h=h+d;
  }

  void fd(float d) {
    float ox=x;
    float oy=y;
    
    x = x+cos(radians(h))*d;
    x=x%360;
    y = y+sin(radians(h))*d;
    y=y%360;
    if (pendown) {
      stroke(c);
    }
    line(ox,oy,x,y);
    //draw();
    noStroke();
  }
  void bk(float d) {
    float ox=x;
    float oy=y;
    
    x = x-cos(radians(h))*d;
    x=x%360;
    y = y-sin(radians(h))*d;
    y=y%360;
    if (pendown) {
      stroke(c);
    }
    line(ox,oy,x,y);
    //draw();
    noStroke();
  }


  
  void pd() {
    pendown = true;
  }
  void pu() {
    pendown = false;
  }
  void draw(){
    fill(c);
    triangle(x-5,y-5,x+5,y,x+5,y+5);
    noStroke();
  }
  
}

void tree(Turtle t, float llen) {
  t.pd();
  if (llen >5){
    t.fd(llen);
    t.right(20);
    tree(t,llen-15);
    t.left(40);
    tree(t,llen-15);
    t.right(20);
    t.bk(llen);
  }
  t.pu();
}
void spiral(Turtle t, float llen){
  if (llen>0) {
    t.pd();
    t.fd(llen);
    t.right(90);
    spiral(t,llen-5);
  }
}
Turtle t;
void setup() {
  size(300, 300);
  t = new Turtle();
  //spiral(t,100);
  tree(t,50);
}



void draw() {
}