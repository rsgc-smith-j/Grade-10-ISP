
void setup() {
  size(1000, 1000, P3D);
  frameRate(30);
}

void draw() {
  background(0);
  stroke(mouseX *.5,mouseY *1.5,120,10);
  strokeWeight(200);
  fill(255,0);

  //smaller set of circles going left to right
  ellipse(300,400,mouseX*.5,mouseY*.5);
  ellipse(400,400,mouseX*.5,mouseY*.5);
  ellipse(500,400,mouseX*.5,mouseY*.5);
  ellipse(600,400,mouseX*.5,mouseY*.5);
  ellipse(700,400,mouseX*.5,mouseY*.5);

  //smaller set of circles going up and down
  ellipse(500,500,mouseX*.5,mouseY*.5);
  ellipse(500,300,mouseX*.5,mouseY*.5);
  ellipse(500,200,mouseX*.5,mouseY*.5);
  ellipse(500,600,mouseX*.5,mouseY*.5);

  //larger set of circles going left to right
  ellipse(300,400,mouseX*1,mouseY*1);
  ellipse(400,400,mouseX*1,mouseY*1);
  ellipse(500,400,mouseX*1,mouseY*1);
  ellipse(600,400,mouseX*1,mouseY*1);
  ellipse(700,400,mouseX*1,mouseY*1);

  //larger set of circles going up and down
  ellipse(500,500,mouseX*1,mouseY*1);
  ellipse(500,300,mouseX*1,mouseY*1);
  ellipse(500,200,mouseX*1,mouseY*1);
  ellipse(500,600,mouseX*1,mouseY*1);
  
    //largest set of circles going left to right
  ellipse(300,400,mouseX*1.5,mouseY*1.5);
  ellipse(400,400,mouseX*1.5,mouseY*1.5);
  ellipse(500,400,mouseX*1.5,mouseY*1.5);
  ellipse(600,400,mouseX*1.5,mouseY*1.5);
  ellipse(700,400,mouseX*1.5,mouseY*1.5);

  //largest set of circles going up and down
  ellipse(500,500,mouseX*.25,mouseY*.25);
  ellipse(500,300,mouseX*.25,mouseY*.25);
  ellipse(500,200,mouseX*.25,mouseY*.25);
  ellipse(500,600,mouseX*.25,mouseY*.25);
}