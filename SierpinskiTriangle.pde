public void setup()
{
	size(1000,1000);
	background(0);
	noFill();
	stroke(138,2,0);
	strokeWeight(2);
}
public void draw()
{
	sierpinski(100,900,800);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 10)
		{triangle(x,y,x+len,y,x+(len/2),y-len);}
	else {
		sierpinski(x,y,len/2);
		sierpinski((x+len/2),y,len/2 );
		sierpinski(x+(len/4),y-(len/2),len/2);
	}
}