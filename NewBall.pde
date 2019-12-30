 public class Ball
{
  private int x;
  private int y;
  private int diameter;
  private int takeNextStepTowardsX;
  private int takeNextStepTowardsy;
  private color ballColour=color(255,0,0);
  
  public Ball(int x, int y, int diameter,int takeNextStepTowardsX, int takeNextStepTowardsy)
  {
    this.x=x;
    this.y=y;
    this.diameter=diameter;
    this.takeNextStepTowardsX=takeNextStepTowardsX;
    this.takeNextStepTowardsy=takeNextStepTowardsy;
  }
  public void update(){
     move();
   checkCollisionWithWalls();
  }
  
  public void checkCollisionWithWalls(){
    if(isCollidingWithVerticleWalls())
    {
      setTakeNextStepTowardsy(getTakeNextStepTowardsy() * -1);
    }
    else if(isCollidingWithHorizontalWalls()){
      setTakeNextStepTowardsX(getTakeNextStepTowardsX() * -1);
    }
  }
  
  public boolean isCollidingWithVerticleWalls(){
    if(getY()+(getDiameter()/2) > height || getY()-getDiameter()/2 <0 )
    {
      return true;
    }
    return false;
  }
   public boolean isCollidingWithHorizontalWalls(){
    if(getX()+(getDiameter()/2) > height || getX()-(getDiameter()/2) <0 )
    {
      return true;
    }
    return false;
  }
  
  public void move()
  {
    y=y+takeNextStepTowardsy;
    x=x+takeNextStepTowardsX;
  }
  
  public void setTakeNextStepTowardsy(int takeNextStepTowardsy){
    this.takeNextStepTowardsy=takeNextStepTowardsy;
  }
  public void setTakeNextStepTowardsX(int takeNextStepTowardsX){
    this.takeNextStepTowardsX=takeNextStepTowardsX;
  }
  
  public int getTakeNextStepTowardsX()
  {return this.takeNextStepTowardsX;
  }
  
  public int getTakeNextStepTowardsy()
  {return this.takeNextStepTowardsy;
  }
  public int getX()
  {
    return this.x;
  }
   public int getY()
  {
    return this.y;
  }
  public int getDiameter()
  {
    return this.diameter;
  }
 public boolean pointInEllipse(int x,int y)
 {
   double distance=Math.sqrt(Math.pow(x-getX(),2)+(Math.pow(y-getY(),2)));
 if(distance<getDiameter()/2)
 {
   return true;
 }
   return false;
 }
 
  public void changeColour(){
    if(red(this.ballColour)==255)
    {this.ballColour=color(#FFFF00);
    }else
    {
      this.ballColour=color(255,0,0);
    }
  }
  public void display()
  {
   fill(ballColour);
    ellipse(x,y,diameter,diameter);
    
  }
}
