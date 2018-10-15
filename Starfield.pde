
void setup()
{
	size(500, 500);
  background(0);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double myX, myY, mySpeed, myAngle;
  int myColor;
  NormalParticle()
  {
    myX = myY = 250;
    myAngle = 45;
    mySpeed = 20;
    myColor = color(255);
  }
  
}
void move()
{
  //myX = myX + Math.cos(myAngle) * mySpeed;
  //myY = myY + Math.sin(myAngle) * mySpeed;
}
void show()
{
  //fill(myColor);
  //ellipse(myX, myY, 10, 10);
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
