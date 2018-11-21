/* Dice by Gabby S
* For CS 11
*/

void setup() {
      size(500,500);
      noLoop();
  }
  
  void draw() {
    background(200);
    int total = 0;
    fill(0);
    for(int y = 50; y <= 450; y += 90) {
      for(int x = 50; x <= 450; x += 90) {
        Die pop = new Die(x,y);
        pop.show();
        total += pop.value;
      }
    }
    text("You rolled: "+ total,215, 25);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube 
 {
    int value;
    int myX, myY;
      
      Die(int x, int y) //constructor
      {
        roll();
        this.myX = x;
        this.myY = y;
      }
      void roll()
      {
      value = ((int)(Math.random()*6)+1); //{1,2,3,4,5,6}
        
  }
      void show() {
          int rectSize = 50;
          fill(225,225,225);
          rect(myX,myY,rectSize,rectSize);
          fill(0);
          myX -= 50;
          myY -= 50;
          if (value == 1) {
            ellipse(myX + rectSize * 1.5,myY + rectSize * 1.5,5,5);
          } else if (value == 2) {
            ellipse(myX + rectSize * 1.25, myY + rectSize * 1.5, 5, 5);
            ellipse(myX + rectSize * 1.75, myY + rectSize * 1.5, 5, 5);
          } else if (value == 3) {
            ellipse(myX + rectSize * 1.33, myY + rectSize * 1.33, 5, 5);
            ellipse(myX + rectSize * 1.66, myY + rectSize * 1.33, 5, 5);
            ellipse(myX + rectSize * 1.5, myY + rectSize * 1.66, 5, 5);
          } else if (value == 4) {
            ellipse(myX + rectSize * 1.25, myY + rectSize * 1.25, 5, 5);
            ellipse(myX + rectSize * 1.25, myY + rectSize * 1.75, 5, 5);
            ellipse(myX + rectSize * 1.75, myY + rectSize * 1.25, 5, 5);
            ellipse(myX + rectSize * 1.75, myY + rectSize * 1.75, 5, 5);
          } else if (value == 5) {
            ellipse(myX + rectSize * 1.25, myY + rectSize * 1.25, 5, 5);
            ellipse(myX + rectSize * 1.25, myY + rectSize * 1.75, 5, 5);
            ellipse(myX + rectSize * 1.75, myY + rectSize * 1.25, 5, 5);
            ellipse(myX + rectSize * 1.75, myY + rectSize * 1.75, 5, 5);
            ellipse(myX + rectSize * 1.5, myY + rectSize * 1.5, 5, 5);
          } else if (value == 6) {
            ellipse(myX + rectSize * 1.33, myY + rectSize * 1.33, 5, 5);
            ellipse(myX + rectSize * 1.66, myY + rectSize * 1.33, 5, 5);
            ellipse(myX + rectSize * 1.5, myY + rectSize * 1.66, 5, 5);
            ellipse(myX + rectSize * 1.5, myY + rectSize * 1.33, 5, 5);
            ellipse(myX + rectSize * 1.66, myY + rectSize * 1.66, 5, 5);
            ellipse(myX + rectSize * 1.33, myY + rectSize * 1.66, 5, 5);
          }
      }
  }
