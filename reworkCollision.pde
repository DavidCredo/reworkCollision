Ball ball;
Ball[] balls = new Ball[30];


void setup() {
    size(512, 512);
    for (int i = 0; i < balls.length; ++i) {
        balls[i] = new Ball(random(10, 100));
    }
}

void draw() {
    background(0);
    for (int i = 0; i < balls.length; ++i) {
        balls[i].update();
        balls[i].checkBoarderCollision();
        balls[i].display();    
    }
    
}
