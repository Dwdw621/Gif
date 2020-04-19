ArrayList<PImage> gif;
int n;

void setup(){
  size(800,800);
  gif = new ArrayList<PImage>();
  int i = 0;
  while(i < 11){
    String zero = "";
    if(i < 10){
      zero = "0"; 
    }
    gif.add(loadImage("frame_" + zero + i + "_delay-0.05s.gif"));
    i++;
  }
  frameRate(20);
}

void draw(){
  PImage frames = gif.get(n);
  image(frames, 0, 0, width, height);
  n++;
  if(n > 10) n = 0; 
}
