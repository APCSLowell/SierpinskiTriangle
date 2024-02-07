class STriangle {
  private int truex;
  private int truey;
  private float my;
  private float mx;
  private int leng;
  private int trianglenumt;
  private STriangle St1, St2, St3;
  private float dmy, dmx;
  public STriangle(int x, int y, int len, int trianglenum) 
  {
    dmy = 0;
    dmx = 0;
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
  public void moveBack() {
    my += (truey-my)/10;
    mx += (truex-mx)/10;
    if (trianglenumt < maxtri) {
      St1.moveBack();
      St2.moveBack();
      St3.moveBack();
    }
  }
  public void seperate(float multi) {
    float distance = (dist(mx, (float)(my + leng * (Math.sqrt(3)/4)), 600, 386));
    if (distance < 1) {
      distance = 1;
    }
    my += 5*multi*Math.sqrt(trianglenumt) * (Math.random() * 3)*(10)/((distance)/20)* (Math.abs(my - 386)/(my-386));
    mx += 5*multi*Math.sqrt(trianglenumt) * (Math.random() * 3)*(10)/((distance)/20)* (Math.abs(mx - 600)/(mx-600));
    if (trianglenumt < maxtri) {
      St1.seperate(multi);
      St2.seperate(multi);
      St3.seperate(multi);
    }
  }
  public void move() {
    if (!changeColor) {
      if (truey < 900/4) {
        int temp = 900/4;
        int tempb = (int)truey - 0;
        stroke(255, (255 * tempb)/temp, 0);
      } else if (truey < 900/2) {
        int temp = 900/4;
        if (temp == 0) {
          temp = 1;
        }
        int tempb = (int)truey - 900/4;
        stroke(127 - (127 * tempb)/temp, 255, (255 * tempb)/temp);
      } else if (truey < 900*3/4) {
        int temp = 900/4;
        if (temp == 0) {
          temp = 1;
        }
        int tempb = (int)truey - 900/2;
        stroke(0, 255 - (255 * tempb)/temp, 255);
      } else {
        int temp = 900/4;
        if (temp == 0) {
          temp = 1;
        }
        int tempb = (int)truey - 900*3/4;
        stroke(255-(127 * tempb)/temp, 0, 255);
      }
    } else {
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
    }
    beginShape();
    vertex(mx+leng/2, my);
    vertex(mx-leng/2, my);
    vertex(mx, (float)(my+leng/2*Math.sqrt(3)));
    vertex(mx+leng/2, my);
    endShape();
    if (trianglenumt < maxtri) {
      St1.move();
      St2.move();
      St3.move();
    }
  }
}
