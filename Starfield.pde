//NormalParticle marisa = new NormalParticle();
NormalParticle [] marisa;
void setup()
{
	size(500, 500);
  background(0);
  marisa = new NormalParticle [1000];
   for (int i = 0; i < marisa.length; i++)
   marisa [i] = new NormalParticle();
}
void draw()
{
   for (int i = 0; i < marisa.length; i++)
 {
   //fadingBackground();
   marisa[i].move();
   marisa[i].show();
 }
}
class NormalParticle
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
  fill(0, 0, 0, 10);
  strokeWeight(0);
  rect(0, 0, 500, 500);
  loop();
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
