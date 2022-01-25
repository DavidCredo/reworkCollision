ArrayList<Ball> balls = new ArrayList<Ball>(); 


void setup() {
    size(512, 512);
    for (int i = 0; i < 10; ++i) {
        balls.add(new Ball(30));
    }
}

void draw() {
    background(0);
    for (int i = 0; i < balls.size(); ++i) {
        balls.get(i).update();
        handleCollision();
        balls.get(i).checkBoarderCollision();
        balls.get(i).collideWithObject(); 
    }
    
    for (int j = 0; j < balls.size(); ++j) {
          balls.get(j).display();
    }
}

    void handleCollision() {
        Ball ball1;
        Ball ball2;

        //Resetting Collision state 
        for (int i = 0; i < balls.size(); ++i) {
            balls.get(i).setIsColliding(false);
        }

        for (int i = 0; i < balls.size(); i++) {
            ball1 = balls.get(i);
            for (int j = i + 1; j < balls.size(); j++) {
                ball2 = balls.get(j);

                if(detectCollision(ball1,ball2)) {
                    ball1.setIsColliding(true);
                    ball2.setIsColliding(true);
                    
                }
            }
        }
    }

    boolean detectCollision(Ball a, Ball b) {
        if (dist(a.location.x, a.location.y, b.location.x, b.location.y) < (a.diameter / 2) + (b.diameter / 2)) {
            return true;
        }
        return false;
    }