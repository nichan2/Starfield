Particle [] marisa;
void setup()
{
	size(500, 500);
  marisa = new Particle [1500];

  
  for (int a = 1000; a < 1500; a++)
  marisa [a] = new OddballParticle();
  
  for (int i = 0; i < 1000; i++)
     marisa [i] = new NormalParticle();
     marisa [2] = new JumboParticle();
}
void draw()
{
  fadingBackground();
   for (int i = 0; i < marisa.length; i++)
 {
   marisa[i].move();
   marisa[i].show();
 }
}

class NormalParticle implements Particle
{
	double myX, myY, mySpeed, myAngle;
  int myColor;
  NormalParticle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color(255);
  }
  
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse((float) myX, (float) myY, 5, 5);
  }
  

}
void fadingBackground()
{
  fill(0, 0, 0, 50);
  strokeWeight(0);
  rect(0, 0, 500, 500);
  loop();
}
interface Particle
{
	public void show();
  public void move();
}
class OddballParticle extends NormalParticle implements Particle
{
  OddballParticle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (int) (Math.random()*10)+3;
    myColor = color(#64E5E4);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse((float) myX, (float) myY, 2, 2);
  }
}
class JumboParticle extends NormalParticle implements Particle
{
	  JumboParticle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (int) (Math.random()*10)+1;
    myColor = color(#D62727);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse((float) myX, (float) myY, 10, 10);
  }
}
