void setup(){
  size(1000,1000);
  noStroke();
  feld1 = new Feld(500,500,2);
  feld1.setzeZucker(feld1.sizeX/2, feld1.sizeY/2);
  //feld1.fillRandom();
  
  for(int i = 0; i < 25000; i++){
    ameisen.add(new Ameise((int)(random(feld1.sizeX)),(int)random(feld1.sizeY),2,feld1));
  }
  
}

void draw(){
  feld1.zeige();
  
  //for(int i = ameisen.size(); i >= 0; i--){
  //  ameisen.get(i).zeige();
  //}
  
  for(Ameise c : ameisen){
    c.randomDirection();
    c.zeige();
    c.bewege();
    c.stayInside();
    if(c.guckeZucker()){
      feld1.grid[c.x] [c.y] = true;
      c.alive = false;
    }
  }
  println(frameRate);
}