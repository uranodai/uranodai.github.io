Star[] stars = new Star[800];
float speed = 30;
void setup(){
  fullScreen();
  //size(640,640);
  for(int i=0; i<stars.length;i++){
    stars[i] = new Star();
  } 
}

void draw(){
  background(0);
  translate(width/2,height/2);
   for(int i=0; i<stars.length;i++){
     stars[i].update();
     stars[i].show();
   } 
   
   //saveFrame("frames/######.tif");
}

class Star {
 
  float x;
  float y;
  float z;
  
  float px;
  float py;
  float pz;
  
  Star(){
    x = random(-width,width);
    y = random(-height,height);
    z = random(width);
  }
  
  void update(){
    z = z-speed;
    if(z<1){
      z = width;
      x = random(-width,width);
      y = random(-height,height);
      px = x;
      py = y;
      pz = z;
    }
  }
  
  void show(){
    fill(255);
    noStroke();
    
    float sx = map(x/z,0,1,0,width);
    float sy = map(y/z,0,1,0,height);
    
    //ellipse(x,y,8,8);
    float r = map(z,0,width,16,0);
    //ellipse(sx,sy,r,r);
    
    float px = map(x/pz,0,1,0,width);
    float py = map(y/pz,0,1,0,height);
    pz = z;
    stroke(255);
    line(px,py,sx,sy);
    
    //px = sx;
    //py = sy;
    
  }
}