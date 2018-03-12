class Goal {
  int x, y;
  final int displWidth = 50;

  Goal(int _x, int _y) {
    x = _x;
    y = _y;
  }

  // Displays the goal on the screen.
  void drawSelf() {
    rectMode(CENTER);
    noStroke();
    fill(255, 255, 255, 150);
    rect(x, y, displWidth, displWidth);
  }

  // Function that checks if certain coordinates are within the goal area.
  boolean containsPoint(int _x, int _y) {
    float xDistance = abs(x - _x);
    float yDistance = abs(y - _y);
    if (xDistance < displWidth && yDistance < displWidth) {
      return true;
    } else {
      return false;
    }
  }
}