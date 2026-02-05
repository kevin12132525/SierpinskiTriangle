int value = 700;
public void setup()
{
  background(255);
  size(800,800);
}
public void draw()
{
  sierpinski(50,750,700);
}
public void mousePressed()//optional
{
  value /= 2;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= value){
    fill(255,192,203);
    triangle(x,y,x+len,y,x+len/2, y - len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
