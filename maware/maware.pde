import gifAnimation.*;

GifMaker gifExport;
int frames = 0;
int totalFrames = 120;

void setup () {
  size(700, 700, P3D);
  
  // Gif
  gifExport = new GifMaker(this, "export.gif", 100);
  gifExport.setRepeat(0);
}

void draw() {
  background(-1);
  fill(0);
  rotateX(-0.3);
  translate(350, 350, 0);
  textFont(createFont("Meiryo",80));
  textAlign(CENTER, CENTER);
  randomSeed(0);
  for(int i=0; i < 100; i++) {
    text("回れ", random(700), 100);
    rotateY(0.01*frameCount);
  }
  
  export();
}

void export() {
  if(frames < totalFrames) {
    gifExport.setDelay(20);
    gifExport.addFrame();
    frames++;
  } else {
    gifExport.finish();
    frames++;
    println("gif saved");
    exit();
  }
}
