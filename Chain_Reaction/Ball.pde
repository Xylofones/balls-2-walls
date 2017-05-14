class Ball {
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  //int state;

  Ball() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    x = random((width - r) + r/2);
    y = random((height - r) + r/2);
    rad = 10;
    c = color (r, g, b);
    dx = random(10) - 5;
    dy = random(10) - 5;
    //state = 1;
  }

  void move() {
    x = x + dx;
    y = y + dy;
    bounce();
  }
  
  void bounce() {
    if (x >= 600 || x <= 0 || y >= 600 || x <= 0) {
      dx = 0 - dx;
      dy = 0 - dy;
    }
  }
}