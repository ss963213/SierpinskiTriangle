public void setup()
{
size(800,800);
}
public void draw()
{background(0);
  noStroke();
  fill(mouseX/2.5,mouseY/2.5,(mouseX+mouseY)/2.5);
sierpinski(mouseX-250,mouseY+250,mouseX+500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{if(len<=20)
triangle(x,y,x+len/sin(PI/3), y,x+len/sin(PI/3)/2, y-len);
else{
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);
}
}