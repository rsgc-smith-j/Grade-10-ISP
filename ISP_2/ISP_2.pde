import processing.sound.*;

SoundFile sample;
FFT fft;
AudioDevice device;

int scale = 2;

int bands = 128;

float r_width;

float[] sum = new float[bands];

float smooth_factor = 0.2;

void setup() {
  size(1000, 1000, P3D);
  frameRate(30);
 
  device = new AudioDevice(this, 44000, bands);

  r_width = width/float(bands);

  sample = new SoundFile(this, "10 Waves.mp3");
  sample.loop();
  
  fft = new FFT(this, bands);
  fft.input(sample);
}

void draw() {
  background(0);
  stroke(mouseX *.5,mouseY *1.5,120,25);
  strokeWeight(200);
  fill(255,0);

   fft.analyze();
  for (int i = 0; i < bands; i++) {
    // Smooth the FFT data by smoothing factor
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
   }
  
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