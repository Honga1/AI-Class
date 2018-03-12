// Array of all the obstacles.
Obstacle[] obstacles = {};
  //{new Obstacle(200, 520, 15, 220, color(111, 111, 111)), 
  //new Obstacle(400, 500, 15, 200, color(111, 111, 111)), 
  //new Obstacle(500, 600, 220, 15, color(111, 111, 111)), 
  //new Obstacle(500, 400, 220, 15, color(111, 111, 111))};

class Obstacle {
  int x;
  int y;
  int displWidth;
  int displHeight;
  color displColor;

  Obstacle(int _x, int  _y, int  _w, int  _h, color _c) {
    x = _x;
    y = _y;
    displWidth = _w;
    displHeight = _h;
    displColor = _c;
  }

  // Displays the obstacle on the screen.
  void drawSelf() {
    rectMode(CENTER);
    noStroke();
    fill(displColor);
    rect(x, y, displWidth, displHeight);
  }

  // Checks if certain coordinate is on the obstacle.
  boolean containsPoint(int _x, int _y) {
    float xDistance = abs(x - _x);
    float yDistance = abs(y - _y);
    if (xDistance < displWidth / 2 && yDistance < displHeight / 2) {
      return true;
    } else {
      return false;
    }
  }
}

// Function that makes it possible to move these obstacles around.
void mouseDragged() {
  for (int i = 0; i < obstacles.length; i++) {
    if (obstacles[i].containsPoint(mouseX, mouseY)) {
      obstacles[i].x = mouseX;
      obstacles[i].y = mouseY;
      obstacles[i].drawSelf();
    }
  }
}