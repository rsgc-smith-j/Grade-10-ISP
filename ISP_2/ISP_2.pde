//READ BEFORE RUNNING THE PROGRAM!
//All red in the program is intended to be most responsive to bass
//all green in the program is intended to be most responive to mid-range vocals
// the blue is more subtle and only really comes in around 40 seconds into the song to respond to higher range vocals

import processing.sound.*;

float scaleFactor1 = 80;

float scaleFactor2 = 60;

float scaleFactor3 = 40;

SoundFile sample;
FFT fft;
AudioDevice device;

int scale = 4;

int bands = 128;

float r_width;

float[] sum = new float[bands];

float smooth_factor = .3;

void setup() {
  size(1000, 1000);
  frameRate(60);
 
 //  some of the following 10 lines was taken from https://processing.org/tutorials/sound/
 
  device = new AudioDevice(this, 44000, bands);

  r_width = width/float(bands);

  sample = new SoundFile(this, "18 Fade.mp3");
  sample.loop();
  
  fft = new FFT(this, bands);
  fft.input(sample);
}

void draw() {
  noFill();
  background(0);
  strokeWeight(100);


// the following was taken from https://processing.org/tutorials/sound/
   fft.analyze();
  for (int i = 0; i < bands; i++) {
    // Smooth the FFT data by smoothing factor
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor+1;
   
   }
  
  //smaller set of circles going left to right
  
  stroke(200,0,0,100);
  ellipse(300,400,sum[1]*scaleFactor1,sum[1]*scaleFactor1);
  ellipse(400,400,sum[1]*scaleFactor1,sum[1]*scaleFactor1);
  ellipse(500,400,sum[1]*scaleFactor1,sum[1]*scaleFactor1);
  ellipse(600,400,sum[1]*scaleFactor1,sum[1]*scaleFactor1);
  ellipse(700,400,sum[1]*scaleFactor1,sum[1]*scaleFactor1);

  //smaller set of circles going up and down
  ellipse(500,500,sum[1]*scaleFactor1,sum[1]*scaleFactor1);
  ellipse(500,300,sum[1]*scaleFactor1,sum[1]*scaleFactor1);
  ellipse(500,200,sum[1]*scaleFactor1,sum[1]*scaleFactor1);
  ellipse(500,600,sum[1]*scaleFactor1,sum[1]*scaleFactor1);
 
 stroke(0,200,0,50);
  //larger set of circles going left to right
  ellipse(300,400,sum[4]*scaleFactor2,sum[4]*scaleFactor2);
  ellipse(400,400,sum[4]*scaleFactor2,sum[4]*scaleFactor2);
  ellipse(500,400,sum[4]*scaleFactor2,sum[4]*scaleFactor2);
  ellipse(600,400,sum[4]*scaleFactor2,sum[4]*scaleFactor2);
  ellipse(700,400,sum[4]*scaleFactor2,sum[4]*scaleFactor2);

  //larger set of circles going up and down
  ellipse(500,500,sum[4]*scaleFactor2,sum[4]*scaleFactor2);
  ellipse(500,300,sum[4]*scaleFactor2,sum[4]*scaleFactor2);
  ellipse(500,200,sum[4]*scaleFactor2,sum[4]*scaleFactor2);
  ellipse(500,600,sum[4]*scaleFactor2,sum[4]*scaleFactor2);
   
  stroke(0,0,200,20);
    //largest set of circles going left to right
  ellipse(300,400,sum[20]*scaleFactor2,sum[20]*scaleFactor1);
  ellipse(400,400,sum[20]*scaleFactor2,sum[20]*scaleFactor1);
  ellipse(500,400,sum[20]*scaleFactor2,sum[20]*scaleFactor1);
  ellipse(600,400,sum[20]*scaleFactor2,sum[20]*scaleFactor1);
  ellipse(700,400,sum[20]*scaleFactor2,sum[20]*scaleFactor1);

  //largest set of circles going up and down
  ellipse(500,500,sum[20]*scaleFactor3,sum[20]*scaleFactor1);
  ellipse(500,300,sum[20]*scaleFactor3,sum[20]*scaleFactor1);
  ellipse(500,200,sum[20]*scaleFactor3,sum[20]*scaleFactor1);
  ellipse(500,600,sum[20]*scaleFactor3,sum[20]*scaleFactor1);
}