import processing.sound.*;

SoundFile sample;
FFT fft;
AudioDevice device;

int scale = 4;

int bands = 128;

float r_width;

float[] sum = new float[bands];

float smooth_factor = 0.2;

void setup() {
  size(1000, 1000);
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
  stroke(mouseX,mouseY,120,25);
  strokeWeight(100);

   fft.analyze();
  for (int i = 0; i < bands; i++) {
    // Smooth the FFT data by smoothing factor
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
   }
  
  //smaller set of circles going left to right
  ellipse(300,400,sum[10]*1,sum[10]*1);
  ellipse(400,400,sum[10]*1,sum[10]*1);
  ellipse(500,400,sum[10]*1,sum[10]*1);
  ellipse(600,400,sum[10]*1,sum[10]*1);
  ellipse(700,400,sum[10]*1,sum[10]*1);

  //smaller set of circles going up and down
  ellipse(500,500,sum[10]*1,sum[10]*1);
  ellipse(500,300,sum[10]*1,sum[10]*1);
  ellipse(500,200,sum[10]*1,sum[10]*1);
  ellipse(500,600,sum[10]*1,sum[10]*1);

  //larger set of circles going left to right
  ellipse(300,400,sum[10]*1.5,sum[10]*1.5);
  ellipse(400,400,sum[10]*1.5,sum[10]*1.5);
  ellipse(500,400,sum[10]*1.5,sum[10]*1.5);
  ellipse(600,400,sum[10]*1.5,sum[10]*1.5);
  ellipse(700,400,sum[10]*1.5,sum[10]*1.5);

  //larger set of circles going up and down
  ellipse(500,500,sum[10]*1.5,sum[10]*1.5);
  ellipse(500,300,sum[10]*1.5,sum[10]*1.5);
  ellipse(500,200,sum[10]*1.5,sum[10]*1.5);
  ellipse(500,600,sum[10]*1.5,sum[10]*1.5);
  
    //largest set of circles going left to right
  ellipse(300,400,sum[10]*2,sum[10]*2);
  ellipse(400,400,sum[10]*2,sum[10]*2);
  ellipse(500,400,sum[10]*2,sum[10]*2);
  ellipse(600,400,sum[10]*2,sum[10]*2);
  ellipse(700,400,sum[10]*2,sum[10]*2);

  //largest set of circles going up and down
  ellipse(500,500,sum[10]*2,sum[10]*2);
  ellipse(500,300,sum[10]*2,sum[10]*2);
  ellipse(500,200,sum[10]*2,sum[10]*2);
  ellipse(500,600,sum[10]*2,sum[10]*2);
}