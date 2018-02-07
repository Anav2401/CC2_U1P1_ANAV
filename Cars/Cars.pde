PVector Position = new PVector(random(100), random(100));
PVector Direction = new PVector (0, 0);
PImage gc;
PImage bc;
PImage go;
float bspeed = 3;
PVector Mouse = new PVector (0, 0);
float im;
float jm;
int m;
int c;
void setup()
{
  size(2000, 2000);
  imageMode(CENTER);
  gc = loadImage("GoodGuyCar.png");
  gc.resize(100, 150);
  bc =loadImage("BadGuyCar.png");
  bc.resize(100, 150);
  text("Cars", 400, 400);
  textSize(50);
}
void draw()
{
  background(35, 245, 141);

  PVector Mouse = new PVector (mouseX, mouseY);
  image(gc, mouseX, mouseY);
  Direction = PVector.sub(Position, Mouse);
  bspeed = Direction.mag();
  Direction.normalize();
  Direction.mult(bspeed/10);
  Position.sub(Direction); 
  image(bc, Position.x, Position.y);
  m = millis()/1000;
  textSize(200);
  text(":"+m+"sec", 550, 150);
  if ( dist(mouseX, mouseY, Position.x, Position.y) < 150)
  {
    background(198, 35, 245);
    textSize(300);
    text(m, 500, 500);
    c++;
  }
  if (m==60)
  {
    clear();
    text("FINAL SCORE", 0, 400);
    textSize(50);
    text((m-(c/3)), 500, 500);
    stop();
  }
}