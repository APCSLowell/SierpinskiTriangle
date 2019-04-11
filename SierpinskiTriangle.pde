int maxtri = 9;
boolean changeColor = true;
STriangle MasterTriangle;
boolean toggle = true;
public void setup()
{
  noFill();
  background(255);
  size(1200, 1200);
  MasterTriangle = new STriangle(600, 150, 900, 0);
  maxtri = 6;
}
public void draw()
{
  background(255);
  MasterTriangle.moveBack();
}
public void mouseDragged()//optional
{
  MasterTriangle.seperate();
}
public void keyPressed() {
  if (key == 'w') {
    if (maxtri < 9) {
      maxtri++;
    }
  }
  if (key == 's') {
    if (maxtri > 1) {
      maxtri--;
    }
  }
  if(key == 'e'){
    if(toggle){
  changeColor = !changeColor;
  toggle = false;
    }
  }
}
public void keyReleased(){
if(key == 'e'){
toggle = true;
}
}
