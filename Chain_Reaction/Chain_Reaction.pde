Ball[]balls;
boolean reactionStarted;

void setup(){
  size (600,600);
  reactionStarted = false;
  balls = new Ball[25];
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(balls);
  }
  noStroke();
  fill(255,204);   
  int start = (int) random(25);
  balls[start].state=2;
  balls[start].c= color(0,0,0);
}

void draw() {
  background(0);
  for (int i = 0; i < balls.length;i++) {
    balls[i].move();
    balls[i].display();
    reactionStarted = true;
    for (int x = 0; x < balls.length;x++) {
        if ( balls[i] != balls[x]) {
          if (balls[i].collisonCheck(balls[x])) {
            balls[i].state = 2;
            balls[x].state = 2;    
        }
      }
    }
  }
    
    
}