Player p;
boolean[] keys;
boolean[] keys2;
float SPACE_SIZE;
PFont font;
ArrayList<Enemy> enemies;
boolean battle;

void setup()
{
  size(500, 500, OPENGL);
  frameRate(60);
  smooth();
  //rectMode(CENTER);
  font = loadFont("AngsanaNew-48.vlw");
  textFont(font, int(width * .05));
  keys = new boolean[4];
  keys2 = new boolean[4];
  SPACE_SIZE = width * 0.05;
  restart();
}

void restart()
{
  battle = false;
  enemies = new ArrayList<Enemy>();
  enemies.add(new Enemy(new PVector(SPACE_SIZE * 7, SPACE_SIZE * 3)));
  p = new Player(new PVector(SPACE_SIZE * 1, SPACE_SIZE * 1), SPACE_SIZE);
}

void draw()
{
  background(127);
  if (!battle)
  {
    camera(p.loc.x, p.loc.y, (height/2.0) / tan(PI*30.0 / 180.0) * 1.25, p.loc.x, p.loc.y, 0, 0, 1, 0);
    fill(0, 255, 0);
    stroke(0);
    for (float x = SPACE_SIZE / 2; x < width; x += SPACE_SIZE)
      for (float y = SPACE_SIZE / 2; y < height; y += SPACE_SIZE)
        rect(x, y, SPACE_SIZE, SPACE_SIZE);
    for (int i = 0; i < enemies.size(); i ++)
    {
      Enemy e = enemies.get(i);
      e.show();
      e.run();
    }
    p.run();
    p.show();
  }
}

void keyPressed()
{
  if (key == 'w')
    keys[0] = true;
  else if (key == 'd')
    keys[1] = true;
  else if (key == 's')
    keys[2] = true;
  else if (key == 'a')
    keys[3] = true;
}

void keyReleased()
{
  if (key == 'w')
  {
    keys[0] = false;
    keys2[0] = true;
  }
  else if (key == 'd')
  {
    keys[1] = false;
    keys2[1] = true;
  }
  else if (key == 's')
  {
    keys[2] = false;
    keys2[2] = true;
  }
  else if (key == 'a')
  {
    keys[3] = false;
    keys2[3] = true;
  }
}

