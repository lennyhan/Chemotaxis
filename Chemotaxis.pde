Voidwalker[] voidheart;
void setup() {
  size(500, 500);
  background(255);
  voidheart = new Voidwalker[10];
  for (int i=0; i<voidheart.length; i++)
    voidheart[i] = new Voidwalker();
}

void draw() {
  for (int i=0; i<voidheart.length; i++) {
    voidheart[i].move();
    voidheart[i].show();
    frameRate(20);
  }
}

class Voidwalker {
  int myX, myY, current;
  Voidwalker() {
    myX = 250;
    myY = 250;
  }
  void move() {
    myX += (int)((Math.random()*10)-5);
    myY += (int)((Math.random()*10)-5);
  }
  void show() {
    current = (int)((Math.random()*2)+1);
    if (current == 1) {
      fill(255,202,229);
    }else if (current == 2)
      fill(173, 216, 230);
    ellipse(myX, myY, 10, 10);
  }
}
