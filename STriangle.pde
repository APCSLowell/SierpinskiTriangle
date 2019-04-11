class STriangle {
  private int truex;
  private int truey;
  private float my;
  private float mx;
  private int leng;
  private int trianglenumt;
  private STriangle St1, St2, St3;
  public STriangle(int x, int y, int len, int trianglenum) 
  {
    truex = x;
    truey = y;
    leng = len;
    trianglenumt = trianglenum;
    my = y + (int)(Math.random()*300 -150);
    mx = x + (int)(Math.random()*300 -150);
      if (my < 900/4) {
      int temp = 900/4;
      int tempb = (int)my - 0;
      stroke(255, (255 * tempb)/temp, 0);
    } else if (my < 900/2) {
      int temp = 900/4;
      if (temp == 0) {
        temp = 1;
      }
      int tempb = (int)my - 900/4;
      stroke(127 - (127 * tempb)/temp, 255, (255 * tempb)/temp);
    } else if (my < 900*3/4) {
      int temp = 900/4;
      if (temp == 0) {
        temp = 1;
      }
      int tempb = (int)my - 900/2;
      stroke(0, 255 - (255 * tempb)/temp, 255);
    } else {
      int temp = 900/4;
      if (temp == 0) {
        temp = 1;
      }
      int tempb = (int)my - 900*3/4;
      stroke(255-(127 * tempb)/temp, 0, 255);
    }
    beginShape();
    vertex(mx+leng/2, my);
    vertex(mx-leng/2, my);
    vertex(mx, (float)(my+leng/2*Math.sqrt(3)));
    vertex(mx+leng/2, my);
    endShape();
    beginShape();
    vertex(x+len/2, y);
    vertex(x-len/2, y);
    vertex(x, (float)(y+len/2*Math.sqrt(3)));
    vertex(x+len/2, y);
    endShape();
    if (trianglenum < maxtri) {
      St1 = new STriangle(x - len/4, y, len/2, trianglenum+1);
      St2 = new STriangle(x, (int)(y+len/4*Math.sqrt(3)), len/2, trianglenum+1);
      St3 = new STriangle(x+len/4, y, len/2, trianglenum+1);
    }
  }
  public void moveBack(){
    my += (truey - my)/10;
    mx += (truex - mx)/10;
      if (my < 900/4) {
      int temp = 900/4;
      int tempb = (int)my - 0;
      stroke(255, (255 * tempb)/temp, 0);
    } else if (my < 900/2) {
      int temp = 900/4;
      if (temp == 0) {
        temp = 1;
      }
      int tempb = (int)my - 900/4;
      stroke(127 - (127 * tempb)/temp, 255, (255 * tempb)/temp);
    } else if (my < 900*3/4) {
      int temp = 900/4;
      if (temp == 0) {
        temp = 1;
      }
      int tempb = (int)my - 900/2;
      stroke(0, 255 - (255 * tempb)/temp, 255);
    } else {
      int temp = 900/4;
      if (temp == 0) {
        temp = 1;
      }
      int tempb = (int)my - 900*3/4;
      stroke(255-(127 * tempb)/temp, 0, 255);
    }
    beginShape();
    vertex(mx+leng/2, my);
    vertex(mx-leng/2, my);
    vertex(mx, (float)(my+leng/2*Math.sqrt(3)));
    vertex(mx+leng/2, my);
    endShape();
    if(trianglenumt < maxtri){
    St1.moveBack();
    St2.moveBack();
    St3.moveBack();
    }
  }
  public void seperate(){
  my += trianglenumt * (Math.random() * 2)*(5)/((dist(mx,my,mouseX,mouseY))/20) * (Math.abs(my - mouseY)/(my-mouseY));
  mx += trianglenumt * (Math.random() * 2)*(5)/((dist(mx,my,mouseX,mouseY))/20)* (Math.abs(mx - mouseX)/(my-mouseX));
      if(trianglenumt < maxtri){
    St1.seperate();
    St2.seperate();
    St3.seperate();
    }
  }
}
