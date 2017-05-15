class Ball {
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  Ball[]others;
  int state;

  Ball(Ball[]arr) {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    x = random((width - r) + r/2);
    y = random((height - r) + r/2);
    rad = 10;
    c = color (r, g, b);
    dx = random(10) - 5;
    dy = random(10) - 5;
    others = arr;
    state = 1;
  }

  void move() {
    if (rad >=50) {
      state = 3;
    }
    if (state == 1){ 
      x = x + dx;
      y = y + dy;
      bounce();
    }
    else if (state == 2) {
      if (rad < 100) {
        rad += .1;
      }
      if (rad >=50) {
        state = 3;
      }
    }   
    if (state == 3){
      rad = rad -.2;
    }
    else{
    }
  }
  
  void bounce() {
    if (x<=1 || x>=599) {
      dx = 0 - dx;
    }
    if (y<=1 || y>=599) {
      dy = 0 - dy;
    }
  }
  
  void display() {
    ellipse(x,y,rad*2,rad*2);
  }
  
  boolean collisonCheck (Ball target) {
    float dist = dist (x,y,target.x,target.y);
    if (dist < (rad + target.rad)) {
      if (target.state==2){
        return true;
      }
    }
    return false;
  }
}