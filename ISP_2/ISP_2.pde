
void setup() {

  size(1000, 1000, P3D);
}
void draw() {
  background(0);
  stroke(200, 40);
  strokeWeight(10);
  noFill();
  ellipse(300, 400, mouseX * .5, mouseY * .5);
  ellipse(400, 400, mouseX *  .5, mouseY * .5);
  ellipse(500, 400, mouseX *  .5, mouseY * .5);
  ellipse(600, 400, mouseX * .5, mouseY * .5);
  ellipse(700, 400, mouseX * .5, mouseY * .5);
  ellipse(500, 500, mouseX * .5, mouseY * .5);
  ellipse(500, 300, mouseX * .5, mouseY * .5);
  ellipse(500, 400, mouseX * .5, mouseY * .5);
  ellipse(500, 200, mouseX * .5, mouseY * .5);
  ellipse(500, 600, mouseX * .5, mouseY * .5);
  
  ellipse(400, 400, mouseX *  1, mouseY * 1);
  ellipse(600, 400, mouseX * 1, mouseY * 1);
  ellipse(700, 400, mouseX * 1, mouseY * 1);
  ellipse(500, 500, mouseX * 1, mouseY * 1);
  ellipse(500, 300, mouseX * 1, mouseY * 1);
  ellipse(500, 400, mouseX * 1, mouseY * 1);
  ellipse(500, 200, mouseX * 1, mouseY * 1);
  ellipse(500, 600, mouseX * 1, mouseY * 1);
}