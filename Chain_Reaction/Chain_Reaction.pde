Ball[]balls;
boolean reactionStarted;

void setup(){
  size (600,600);
  reactionStarted = false;
  balls = new Ball[25];
}
void draw() {
  background(0);
  for (int i = 0; i < balls.lengtb; i++) 
    balls[i].move();    
}