class Feld{
  int sizeX;
  int sizeY;
  
  int squareSize;
  
  boolean grid[][];
  
  Feld(int sizeX, int sizeY, int squareSize){
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    
    this.squareSize = squareSize;
    
    grid = new boolean[sizeX][sizeY];
  }
  
  void fillRandom(){
    for(int y = 0; y < sizeY; y++){
      for(int x = 0; x < sizeX; x++){
          grid[x][y] = random(1) < 0.5  ;
      }
    }
  }
  
  void setzeZucker(int X, int Y){
    grid[X][Y] = true;
  }
  
  void zeige(){
    for(int y = 0; y < sizeY; y++){
      for(int x = 0; x < sizeX; x++){
          if(grid[x][y] == true){
            fill(0);
          }else{
            fill(255);
          }
          rect(x*squareSize, y*squareSize, squareSize, squareSize);
      }
    }
  }
}