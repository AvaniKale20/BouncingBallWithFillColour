
Ball[] balls=new Ball[200];
void setup(){
  size(800,700);

  for(int i=0;i<balls.length;i++){
 
    balls[i] = new Ball(int(random(150,650)),int(random(60,678)),int(random(30,55)),int(random(5)),int(random(5)));
  }
}
void draw(){
  background(255);
for(int i=0;i<balls.length;i++){
  
  balls[i].display();
  balls[i].update();
} 
}

void mousePressed(){
    for(int i=0;i<balls.length;i++){
      if(balls[i].pointInEllipse(mouseX,mouseY))
      {
        balls[i].changeColour();
      }
    }
  }
