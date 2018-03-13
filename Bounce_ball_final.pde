float x=600;
float y=60;
float vx=8;
float vy=8;
float i=50;

void setup() {
  size(1000,1000);
}

void draw(){
  background(0xF9FFFFF);
  
 x+=vx;
 if(x>width||x<0){
  vx=vx*-1; 
 }
 
 y+=vy;
 if(y>height||y<0){
   vy=vy*-1;
 }
 ellipse(x,y,100,100);
}

void keyPressed(){
  if(key=='f'){
    fill(i);
    i+=30;
  }
  else if (key=='d'){
    i-=30;
    fill(i); 
  }
}