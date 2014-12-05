/**
 * Turtle class
 *
 */
class Turtle {
  float x,y,h;
  color c;
  boolean pendown;

  /**
   * constructor
   *
   */
  public Turtle() {
    x = 150;
    y= 150;
    h=0;
    pendown = false;
    c = color(255,0,0);
  }

  /**
   * Constructor
   * @param x, y -- starting location for the turtle
   *
   */
  public Turtle(float x, float y){
    this.x = x; this.y=y;
  }

  
  /**
   * constructor
   * @param x,y and color
   */
  public Turtle(float x, float y, color c){
    this.x = x; this.y = y; this.c = c;
  }


  /*----------------- set location --------------------*/

  void setX(float x) {
    this.x = x;
  }


  void setY(float y) {
    this.y = y;
  }
  void setXY(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  /*----------------- set color --------------------*/
  void setColor(color c){
    this.c =c ;
  }
  
  /*----------------- set heading --------------------*/
  void setHeading(float d) {
    h = d;
  }

  void left(float d) {
    h=h-d;
  }
  void right(float d) {
    h=h+d;
  }

  
  /*----------------- movement --------------------*/

  
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


  /*----------------- drawing --------------------*/

  
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

/*----------------- free routines--------------------*/


/*----------------- setup and draw and globals --------------------*/

Turtle t;


void setup() {
  size(800, 800);
  t = new Turtle();
}



void draw() {
}
