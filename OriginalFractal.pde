public void setup(){
    size(600, 600);
  }
  
  public void draw(){
    background(0);
    myFractal(300, 300, 100);
    myFractal(100, 100, 100);
    myFractal(500, 500, 100);
    myFractal(100, 500, 100);
    myFractal(500, 100, 100);
  }
  public void myFractal(int x, int y, int siz) {
    ellipse(x, y, siz, siz);
    if(siz > 5){
      fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      myFractal(x - siz/2, y - siz/2, siz - siz/2);
      myFractal(x + siz/2, y + siz/2, siz - siz/2);
      myFractal(x + siz/2, y - siz/2, siz - siz/2);
      myFractal(x - siz/2, y + siz/2, siz - siz/2);
    }
  }
}
