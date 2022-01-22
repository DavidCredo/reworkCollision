Ball ball;
Ball ball2;

void setup() {
    size(512, 512);
    ball = new Ball(20);
}

void draw() {
    background(200);
    ball.update();
    ball.checkBoarderCollision();
    ball.display();
}
