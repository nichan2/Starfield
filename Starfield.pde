//NormalParticle marisa = new NormalParticle();
Particle [] marisa;
void setup()
{
	size(500, 500);
  marisa = new Particle [1500];
   for (int i = 0; i < marisa.length; i++)
   marisa [i] = new NormalParticle();
   //for (int i = 1; i < 2; i++)
   marisa [1] = new OddballParticle();
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

//void mousePressed()
//{
//  redraw();
//}


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
class OddballParticle implements Particle
{
	double myX, myY, myAngle;
  int myColor, mySpeed;
  OddballParticle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (int) Math.random()*10;
    myColor = color(#ABCFF5);
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
class JumboParticle //uses inheritance
{
	//your code here
}
