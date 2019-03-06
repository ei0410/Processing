void setup() {
  background(255);
  size(640, 640);
}

void draw() {
  background(255);
  circle(width/2, height/2, 320);
}

void circle(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  radius /= 2;
  if (radius > 20) {
    circle(x-radius, y, radius);
    circle(x+radius, y, radius);
    circle(x, y-radius, radius);
    circle(x, y+radius, radius);
  }
}
