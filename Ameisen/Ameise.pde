class Ameise {
  int x;
  int y;

  int antSize;

  Feld feldZeiger;

  int direction;

  boolean alive = true;

  Ameise(int x, int y, int antSize, Feld feldZeiger) {
    this.x = x;
    this.y = y;
    this.antSize = antSize;
    this.feldZeiger = feldZeiger;
  }

  void zeige() {
    if(alive){
    fill(255, 0, 0);
    rect(x*feldZeiger.squareSize, y*feldZeiger.squareSize, antSize, antSize);
    }
  }

  void randomDirection() {
    direction = int(random(4));
  }

  boolean guckeZucker() {

    return(feldZeiger.grid[(x+1+feldZeiger.sizeX) % feldZeiger.sizeX][y] || feldZeiger.grid[(x-1+feldZeiger.sizeX) % feldZeiger.sizeX][y] ||feldZeiger.grid[x][(y-1+feldZeiger.sizeY) % feldZeiger.sizeY] ||feldZeiger.grid[x][(y+1+feldZeiger.sizeY) % feldZeiger.sizeY]);
    //println("Hallo" + x +" " + y);
    //println((x+1+feldZeiger.sizeX) % feldZeiger.sizeX);
    //return(feldZeiger.grid[(x+1+feldZeiger.sizeX) % feldZeiger.sizeX][y] );
  }

  void bewege() {
    if (alive) {
      if (direction == 0) {
        y--;
      }
      if (direction == 1) {
        x++;
      }
      if (direction == 2) {
        y++;
      }
      if (direction == 3) {
        x--;
      }
    }
  }

  void stayInside() {
    if (x >= feldZeiger.sizeX) {
      x = 0;
    }
    if (y >= feldZeiger.sizeY) {
      y = 0;
    }
    if (x < 0) {
      x = feldZeiger.sizeX-1;
    }
    if (y < 0) {
      y = feldZeiger.sizeY-1;
    }
  }
}