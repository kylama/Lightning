int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300,300);
  background(50);
  frameRate(100);
}

float lineW = 5;
void draw()
{
  strokeWeight(lineW);
  stroke(#F8E5FF);
  fill(60,60,60,50);
  rect(-10,-10,350,350);
  
  endX = startX + (int)(Math.random()*41 - 20);
  endY = startY + (int)(Math.random()*20);
  line(startX,startY,endX,endY);
  //fill(165,105,190,10);
  //ellipse(endX,endY,10,10);
  
  startX = endX;
  startY = endY;
  
  lineW = lineW - 0.1;
  if(endY > 300){
    lineW = 5;
  }
  if(endY > 400){
    fill(60,60,60);
    rect(-10,-10,350,350);
  }
  if(lineW <= 0)
    lineW = 5;
    
  noStroke();
  fill(0);
  ellipse(150,10,50,50);
  ellipse(175,0,50,50);
  ellipse(125,5,50,50);
  ellipse(110,-5,50,50);
  ellipse(200,2,50,50);
}

void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}
