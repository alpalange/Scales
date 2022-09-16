void setup() {
  size(400, 400);
  background(75, 135, 170);
  frameRate(20);
}

void draw() {

  boolean shift = true;
  for (int y = 400; y>= 0; y-=20) {
    for (int x = 400; x>= 0; x-=16) {
      if (shift == true)
        scale(x-8, y);
      else
        scale (x, y);
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
}//end draw

void scale(int x, int y) {
  //outer scale
  fill(115, 170, 210);
  beginShape();
  vertex(x-10, y);
  vertex(x-10, y);
  vertex(x-7, y+15);
  vertex(x+7, y+15);
  vertex(x+10, y);
  vertex(x+10, y);
  endShape();

  beginShape();
  curveVertex(x-7, y+15);
  curveVertex(x-7, y+15);
  curveVertex(x, y+25);
  curveVertex(x+7, y+15);
  curveVertex(x+7, y+15);
  endShape();

  //inner scale
  int red = (int)(Math.random()*150);
  int green = (int)(Math.random()*50)+110;
  int blue = (int)(Math.random()*50)+120;
  fill(red, green, blue);
  noStroke();
  beginShape();
  vertex(x-10+2, y);
  vertex(x-10+2, y);
  vertex(x-7+2, y+15);
  vertex(x+7-3, y+15);
  vertex(x+10-4, y);
  vertex(x+10-4, y);
  endShape();

  beginShape();
  curveVertex(x-7+2, y+15);
  curveVertex(x-7+2, y+15);
  curveVertex(x, y+23);
  curveVertex(x+7-3, y+15);
  curveVertex(x+7-3, y+15);
  endShape();
}//end scale
