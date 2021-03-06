Die one;
Die two;

void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  background(0);;
  Die one = new Die(90,150);
  Die two = new Die(250,150);
  one.roll();
  one.show();
  two.roll();
  two.show();
  textSize(40);
  fill(255,200,0);
  text(one.numDots+two.numDots, 180,300);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int numDots, myX, myY;//variable declarations here
Die(int x, int y) //constructor
{
  numDots = 0;
  myX = x;
  myY = y;
}
void roll()
{
		numDots =  (int)random(1,7);//your code here
  }
  void show()
  {
    fill(255);
    rect(myX,myY,50,50);
    if (numDots == 1)
    {
      fill(0);
          ellipse(myX+25,myY+25,10,10);//your code here
        }
        if(numDots == 2)
        {
          fill(0);
          ellipse(myX+10, myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
        }
        if(numDots == 3)
        {
          fill(0);
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
          ellipse(myX+25,myY+25,10,10);
        }
        if(numDots == 4)
        {
          fill(0);
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
          ellipse(myX+40,myY+10,10,10);
          ellipse(myX+10,myY+40,10,10);
        }
        if(numDots == 5)
        {
          fill(0);
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
          ellipse(myX+40,myY+10,10,10);
          ellipse(myX+10,myY+40,10,10);
          ellipse(myX+25,myY+25,10,10);
        }
        if(numDots == 6)
        {
          fill(0);
          ellipse(myX+10,myY+10,10,10);
          ellipse(myX+40,myY+40,10,10);
          ellipse(myX+40,myY+10,10,10);
          ellipse(myX+10,myY+40,10,10);
          ellipse(myX+10,myY+25,10,10);
          ellipse(myX+40,myY+25,10,10);
        }


      }
    }

