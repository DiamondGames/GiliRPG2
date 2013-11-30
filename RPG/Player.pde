class Player
{
  PVector loc;
  float SIZE, speed;

  Player(PVector loc, float speed)
  {
    this.loc = loc;
    SIZE = width * 0.025;
    this.speed = speed;
  }

  void show()
  {
    stroke(0);
    fill(255);
    ellipse(loc.x, loc.y, SIZE, SIZE);
  }

  void run()
  {
    if (keys[0] && keys2[0])
    {
      loc.y -= speed;
      keys2[0] = false;
    }
    if (keys[1] && keys2[1])
    {
      loc.x += speed;
      keys2[1] = false;
    }
    if (keys[2] && keys2[2])
    {
      loc.y += speed;
      keys2[2] = false;
    }
    if (keys[3] && keys2[3])
    {
      loc.x -= speed;
      keys2[3] = false;
    }
  }
}

