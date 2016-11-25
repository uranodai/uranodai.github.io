

void setup(){
  //size(500,500);
  size(640,640);
  background(0);
  colorMode(HSB);
  strokeWeight(1.5);
  noFill();
  stroke(255);
  int y = 0;
  
  float c0 = random(255);
  float c1 = random(255);
  
  float n = height/10;
  
  for(int i=0; i<height; i++){
    
    float col = lerp(c0,c1,float(i)/n);
    stroke(col,100,255);
    line(0, y, width, y);
    y+=10;
  }
  
  save("sketch.png");
}