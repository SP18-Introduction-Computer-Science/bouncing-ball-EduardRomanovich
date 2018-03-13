int plotX1;
int plotX2;
int plotY1;
int plotY2;
int xIncrement = 20;
int yIncrement = 10;
boolean atEnd = false;
void setup() {
  size(720,450);
  plotX1 = 10;
  plotY1 = 20;
  plotX2 = 200;
  plotY2 = 120; 
}
void draw() {
  background(0xFFFFFF);
  
  findBound();
  rectMode(CORNERS);
  
  if ( atEnd == false) {
    // Moving down to the right
    plotX1 = xIncrement + plotX1;
    plotX2 = xIncrement + plotX2;
    plotY1 = yIncrement + plotY1;
    plotY2 = yIncrement + plotY2;
    rect(plotX1, plotY1, plotX2, plotY2);
  } else {
    // Moving up and to the left 
    plotX1 = plotX1 - xIncrement;
    plotX2 = plotX2 - xIncrement;
    plotY1 = plotY1 - yIncrement;
    plotY2 = plotY2 - yIncrement;
    rect(plotX1, plotY1, plotX2, plotY2);
  }
  
}
void mousePressed() {
   if ( mouseX > plotX1 && mouseX < plotX2 && mouseY < plotY2 && mouseY > plotY1) {
      if ( atEnd == true) {
         atEnd = false; 
      }else {
         atEnd = true; 
      }
   }
  
  
}
void keyPressed() {
  
   if (key == 'j') {
     xIncrement -= 2; // xIncrement = xIncrement - 1 
     yIncrement -= 1;
   }else if (key == 'k') {
     xIncrement += 2;
     yIncrement += 1;
   }
  
}
void findBound() {
  if (plotX2 > 720 || plotY2 > 450) {
       atEnd = true; // switch direction, go up to the left
       return;
  }
  
  if ( plotX1 < 0 || plotY1 < 0 ) {
    atEnd = false;  // switch directions to down to the right
    return;
  }
  
}