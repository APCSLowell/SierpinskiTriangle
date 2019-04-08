int maxtri = 11;
public void setup()
{
  background(255);
  size(900, 900);
  sierpinski(450, 150, 900,0);
}
public void draw()
{
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len,int trianglenum) 
{
  if (y < 900/4) {
    int temp = 900/4;
    int tempb = y - 0;
    stroke(255, (255 * tempb)/temp, 0);
  } else if (y < 900/2) {
    int temp = 900/4;
    if (temp == 0) {
      temp = 1;
    }
    int tempb = y - 900/4;
    stroke(127 - (127 * tempb)/temp, 255, (255 * tempb)/temp);
  } else if (y < 900*3/4) {
    int temp = 900/4;
    if (temp == 0) {
      temp = 1;
    }
    int tempb = y - 900/2;
    stroke(0, 255 - (255 * tempb)/temp, 255);
  } else {
    int temp = 900/4;
    if (temp == 0) {
      temp = 1;
    }
    int tempb = y - 900*3/4;
    stroke(255-(127 * tempb)/temp, 0, 255);
  }
  if(trianglenum > 0){
  y += Math.random()*250 -125;
  x += Math.random()*250 -125;
  }
  beginShape();
  vertex(x+len/2, y);
  vertex(x-len/2, y);
  vertex(x, (float)(y+len/2*Math.sqrt(3)));
  vertex(x+len/2, y);
  endShape();
  if (trianglenum < maxtri) {
    sierpinski(x - len/4, y, len/2,trianglenum+1);
    sierpinski(x, (int)(y+len/4*Math.sqrt(3)), len/2,trianglenum+1);
    sierpinski(x+len/4, y, len/2,trianglenum+1);
  }
}
