Particle [] particles;
void setup()
{
	size(500,500);
	particles = new Particle [500];  
 	for(int i = 0; i < particles.length; i++) 
 	{
 		particles[i] = new NormalParticle();
 	}
 	particles [0] = new OddballParticle();
 	particles [1] = new JumboParticle();
}
void draw()
{
	background(0);
 	for(int i = 0; i < particles.length; i++)
 	{
    	particles[i].move();
    	particles[i].show();
 	}
}
class NormalParticle implements Particle
{
	double myX,myY,myAngle,mySpeed;

	NormalParticle()
	{
		myX = myY = 250;
		myAngle = myAngle + Math.random()*2*Math.PI;
		mySpeed = Math.random()*11;
	}

	public void move()
	{
		myX = myX + (Math.cos(myAngle)*mySpeed);
		myY = myY + (Math.sin(myAngle)*mySpeed);
	}

	public void show()
	{
		noStroke();
		fill(255);
		ellipse((float)myX,(float)myY,10,10);
	}

}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double oddX,oddY,oddAngle,oddSpeed;

	OddballParticle()
	{
		oddX = oddY = 0;
		oddAngle = oddAngle + Math.random()*2*Math.PI;
		oddSpeed = 0.7;
	}

	public void move()
	{
		oddX = oddX + oddSpeed;
		oddY = oddY + oddSpeed;
	}

	public void show()
	{
		noStroke();
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect((float)oddX,(float)oddY,50,50);
	}
}
class JumboParticle extends NormalParticle
{
	void show()
	{
		noStroke();
		fill(255,255,0);
		ellipse((float)myX,(float)myY,100,100);
	}
}

