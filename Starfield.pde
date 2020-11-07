
Particle [] projectile;




void setup()


{


	size(500, 500);


 projectile = new Particle [1500];











 for (int j = 1000; j < 1500; j++)


 projectile [j] = new OddballParticle();






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


	double myX, myY, spd, Ang;


 int clr;


 NormalParticle()


 {


   myX = myY = 250;


   Ang = Math.random()*2*Math.PI;


   spd = Math.random()*10;


   clr = color(255);


 }






 void move()


 {


   myX = myX + Math.cos(Ang) * spd;


   myY = myY + Math.sin(Ang) * spd;


 }


 void show()


 {


   noStroke();


   fill(clr);


   ellipse((float) myX, (float) myY, 5, 5);


 }











}


void fadingBackground()


{


 fill(0, 0, 0, 0);


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


   Ang = Math.random()*2*Math.PI;


   spd = (int) (Math.random()*10)+3;


   clr = color(#C8A2C8);


 }


 void move()


 {


   myX = myX + Math.cos(Ang) * spd;


   myY = myY + Math.sin(Ang) * spd;


 }


 void show()


 {


   noStroke();


   fill(clr);


   ellipse((float) myX, (float) myY, 2, 2);


 }


}


class JumboParticle extends NormalParticle implements Particle


{


	  JumboParticle()


 {


   myX = myY = 250;


   Ang = Math.random()*2*Math.PI;


   spd = (int) (Math.random()*10)+1;


   clr = color(#FFB6C1);


 }


 void move()


 {


   myX = myX + Math.cos(Ang) * spd;


   myY = myY + Math.sin(Ang) * spd;


 }


 void show()


 {


   noStroke();


   fill(clr);


   ellipse((float) myX, (float) myY, 10, 10);


 }


}


