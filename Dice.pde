Die d1;

void setup() {
	noLoop();
}

void draw() {
  background(225,225,225);
	d1 = new Die(width/2,height/2);
  d1.show();
}

void mousePressed() {
	redraw();
}
class Die { //models one single dice cube
	//variable declarations here
	
	Die(int x, int y) { //constructor
		//variable initializations here
	}

	void roll() {
		//your code here
	}

	void show() {
		//your code here
	}
}
