
Particle[]projectile;




void setup()


{


	size(800, 800);


 projectile = new Particle [150];











 for (int a = 1000; i < 1500; i++)


 projectile [i] = new OddballParticle();






 for (int i = 0; i < 1000; i++)


    projectile [i] = new NormalParticle();


    projectile [2] = new JumboParticle();


}


void draw()


{


 fadingBackground();


  for (int i = 0; i < projectile.length; i++)


{


  projectile[i].move();


  projectile[i].show();


}


}







class NormalParticle implements Particle


{


	double myX, myY, mySpeed, myAngle;


 int myColor;


 NormalParticle()


 {


   myX = myY = 255;


   myAngle = Math.random()*2*Math.PI;


   mySpeed = Math.random()*9;


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


   ellipse((float) myX, (float) myY,7, 7);


 }











}


void Background()


{


 fill(200, 162, 200);


 strokeWeight(0);


 rect(0, 0, 450, 450);


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


   mySpeed = (int) (Math.random()*9)+3;


   myColor = color(#FFB6C1);


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


   ellipse((float) myX, (float) myY, 3, 3);


 }


}


class JumboParticle extends NormalParticle implements Particle


{


	  JumboParticle()


 {


   myX = myY = 250;


   myAngle = Math.random()*2*Math.PI;


   mySpeed = (int) (Math.random()*10)+1;


   myColor = color(#F7CAC9);


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


   ellipse((float) myX, (float) myY, 9, 9);


 }


}


