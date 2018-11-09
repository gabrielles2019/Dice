

void setup()
  {
      size(500,500);
      noLoop();
  }
  void draw()
  {
    for(int y = 50; y <= 450; y += 90) {
      for(int x = 50; x <= 450; x += 90) {
        Die pop = new Die(x,y);
        pop.show();
      }
    }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
    boolean d1, d2, d3, d4, d5, d6;
    int myX, myY;
      
      Die(int x, int y) //constructor
      {
        roll();
        this.myX = x;
        this.myY = y;
      }
      void roll()
      {
      if ((int)(Math.random()*7)+1 < 2) {
        d1 = true;
      } else if ((int)(Math.random()*7)+1 < 3) {
        d2 = true;
      } else if ((int)(Math.random()*7)+1 < 4) {
        d3 = true;
      } else if ((int)(Math.random()*7)+1 < 5) {
        d4 = true;
      } else if ((int)(Math.random()*7)+1 < 6) {
        d5 = true;
      } else if ((int)(Math.random()*7)+1 < 7) {
        d6 = true;
      }
  }
      void show()
      {
          noStroke();
          fill(225,225,225);
          rect(myX,myY,50,50);
          fill(0);
          if (d1 == true) {
            ellipse(myX*1.5, myY*1.5, 5, 5);
          } else if (d2 == true) {
            ellipse(myX*1.25, myY*1.5, 5, 5);
            ellipse(myX*1.75, myY*1.5, 5, 5);
          } else if (d3 == true) {
            ellipse(myX*1.33, myY*1.33, 5, 5);
            ellipse(myX*1.66, myY*1.33, 5, 5);
            ellipse(myX*1.5, myY*1.66, 5, 5);
          } else if (d4 == true) {
            ellipse(myX*1.25, myY*1.25, 5, 5);
            ellipse(myX*1.25, myY*1.75, 5, 5);
            ellipse(myX*1.75, myY*1.25, 5, 5);
            ellipse(myX*1.75, myY*1.75, 5, 5);
          } else if (d5 == true) {
            ellipse(myX*1.25, myY*1.25, 5, 5);
            ellipse(myX*1.25, myY*1.75, 5, 5);
            ellipse(myX*1.75, myY*1.25, 5, 5);
            ellipse(myX*1.75, myY*1.75, 5, 5);
            ellipse(myX*1.5, myY*1.5, 5, 5);
          } else if (d6 == true) {
            ellipse(myX*1.33, myY*1.33, 5, 5);
            ellipse(myX*1.66, myY*1.33, 5, 5);
            ellipse(myX*1.5, myY*1.66, 5, 5);
            ellipse(myX*1.5, myY*1.33, 5, 5);
            ellipse(myX*1.66, myY*1.66, 5, 5);
            ellipse(myX*1.33, myY*1.66, 5, 5);
          }
      }
  }
