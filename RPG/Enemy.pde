class Enemy
{
  PVector loc;
  float SIZE;

  Enemy(PVector loc)
  {
    this.loc = loc;
    SIZE = width * 0.05;
  }

  void show()
  {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    println(fillColor);
    ellipse(loc.x, loc.y, SIZE, SIZE);
  }

  void run()
  {
    if (loc.dist(p.loc) == 0)
      battle = true;
  }
}

