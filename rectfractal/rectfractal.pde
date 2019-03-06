void setup() {
  background(255);
  size(640, 640);
}

void draw() {
  square(width/2, height/2, 320);
}

void square(float x, float y, float edge) {
  stroke(0);
  noFill();
  rect(x-edge/2, y-edge/2, edge, edge);
  edge /= 2;
  if (edge > 10) {
    square(x-edge, y-edge, edge);
    square(x+edge, y-edge, edge);
    square(x-edge, y+edge, edge);
    square(x+edge, y+edge, edge);
  }
}
