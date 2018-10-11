NormalParticle [] particles;
void setup()
{
	size(500,500);
	//background(0);
	particles = new NormalParticle [500];  
 	for(int i = 0; i < particles.length; i++) 
 	{
 		particles[i] = new NormalParticle();
 	}
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
class NormalParticle
{
	double myX,myY,myAngle,mySpeed;
	int nColor;

	NormalParticle()
	{
		myX = myY = 250;
		myAngle = myAngle + Math.random()*2*Math.PI;
		mySpeed = Math.random()*11;
	}

	void move()
	{
		myX = myX + (Math.cos(myAngle)*mySpeed);
		myY = myY + (Math.sin(myAngle)*mySpeed);
	}

	void show()
	{
		noFill();
		fill(255);
		ellipse((float)myX,(float)myY,10,10);
	}

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

