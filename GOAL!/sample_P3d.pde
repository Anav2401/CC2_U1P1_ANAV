PImage Crowd;
float Z = -200;
float RotationX;
float RotationY;
float RotationZ;
PShape fball;
PImage texture;
float Y = 10;
PImage gk;
import processing.sound.*;
SoundFile file;
String audioName = "Crowd cheering Sound.mp3";
PVector Position = new PVector(1000, 1000);
float bspeed = 3;
PVector Mouse = new PVector (0, 0);
PVector Direction = new PVector (0, 0);
PImage goalkeeper;
float X = 200;
void setup () 
{
  file = new SoundFile(this, audioName);
  file.play();
  size(2000, 2000, P3D);
  Crowd = loadImage("Crowd.jpeg");
  Crowd.resize(1600, 200);
  frameRate(60);
  noStroke();
  texture = loadImage("football.jpg");
  fball = createShape(SPHERE, 50);
  fball.setTexture(texture);
  gk = loadImage("gk.png");
}
void draw()
{
  noStroke();
  background(26, 214, 17);
  image(Crowd, -100, 0);
  fill(255, 255, 255);
  rect(0, 200, 70, 1400);
  rect(0, 200, 1400, 70);
  rect(1350, 200, 70, 1400);
  image(gk,X,500);
  X++;
  if (X>700)
  {
  X--;
  }
  if (mousePressed)
  {
    pushMatrix();
    translate(Y, 500);
    rotateX(RotationX);
    rotateY(RotationY);
    rotateZ(RotationZ);
    shape(fball);
    popMatrix();
    Y+=10;
    RotationX = PI/50;
    RotationY = PI/50;
    RotationZ = PI/50;
  }  
  if (Y > 1500)
  {

    clear();
    textSize(400);
    text("GOAL!", 100, 500);
  }
  }
  
  
  
  