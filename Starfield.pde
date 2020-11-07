NormalParticle particle = new NormalParticle(400,400);
Particle[] numParticles;
void setup()
{
  size(800, 800);
  background(0);
  //noStroke();
  numParticles = new Particle[150];
  for (int i = 0; i < numParticles.length; i++)
  {
    numParticles[i] = new NormalParticle(400,400);
  } 
  numParticles[2] = new OddballParticle(400,400);
  numParticles[1] = new JumboParticle(400,400);
}
void draw()
{
  
  for (int i = 0; i < numParticles.length; i++)
  {
    numParticles[i].move();
    numParticles[i].show();
  }
}
class NormalParticle implements Particle
{
  float x, y, ang, spd;
  color clr1,clr2,clr3;
  NormalParticle(int mousex, int mousey)
  {
    x = mousex;
    y = mousey;
    clr1 = (int)(Math.random() * 255);
    clr2 = (int)(Math.random() * 255);
    clr3 = (int)(Math.random() * 255);
    ang = (float)(Math.random() * 10);
    spd = (float)(Math.random() * 20)+10;
  }
  public void move()
  {
    x = x + (float)(Math.cos(ang-(y/3))) * spd;
    y = y + (float)(Math.sin(ang+(x/3))) * spd;
  } 
  public void show()
  {
  	fill(clr1,clr2,clr3);
    ellipse(x,y,15,15);
  }
}

interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle//uses an interface
{
  float x, y, ang, spd;
  color clr1,clr2,clr3;
  OddballParticle(int mousex, int mousey)
  {
    x = mousex;
    y = mousey;
    clr1 = (int)(Math.random() * 255);
    clr2 = (int)(Math.random() * 255);
    clr3 = (int)(Math.random() * 255);
    ang = (float)(Math.random() * 10);
    spd = (float)(Math.random() * 10)+10;
  }
  public void move()
  {
    x = x + (float)(Math.cos(ang+(y*2))) * spd;
    y = y + (float)(Math.sin(ang+(x/2))) * spd;
  }
  public void show()
  {
    fill(clr1, clr2, clr3);
    ellipse(x,y,100,100);
  }
    
    
}
class JumboParticle implements Particle//uses inheritance
{
  float x, y, ang, spd;
  color clr1,clr2,clr3;
  JumboParticle(int mousex,int mousey)
  {
    x = mousex;
    y = mousey;
    clr1 = (int)(Math.random() * 255);
    clr2 = (int)(Math.random() * 255);
    clr3 = (int)(Math.random() * 255);
    ang = (float)(Math.random() * 10);
    spd = (float)(Math.random() * 10)+10;
  }
  public void move()
  {
    x = x + (float)(Math.cos(ang-y)) * spd;
    y = y + (float)(Math.sin(ang-x)) * spd;
  }
  public void show()
  {
    fill(clr1, clr2, clr3);
    rect(x,y,75,75);
  }
}
void mousePressed()
{
  for (int i = 0; i < numParticles.length; i++)
  {
    numParticles[i] = new NormalParticle(mouseX,mouseY);
  } 
  numParticles[2] = new OddballParticle(mouseX,mouseY);
  numParticles[1] = new JumboParticle(mouseX,mouseY);
}
void keyPressed()
{
  background(0);
}
