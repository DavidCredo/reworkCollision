Ball ball;
ArrayList<Ball> balls = new ArrayList<Ball>(); 


void setup() {
    size(512, 512);
    for (int i = 0; i < 3; ++i) {
        balls.add(new Ball(random(10, 100)));
    }
}

void draw() {
    background(0);
    for (int i = 0; i < balls.size(); ++i) {
        balls.get(i).update();
        balls.get(i).checkBoarderCollision();
        //balls.get(i).display();    
    }
    
    for (int j = 0; j < balls.size(); ++j) {
          balls.get(j).display();
    }
}
