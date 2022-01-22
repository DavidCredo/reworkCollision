public class Ball  {

    int diameter;
    PVector location;
    PVector velocity;

    public Ball (int r) {
        this.diameter = r;
        this.location = new PVector(random(width), random(height));
        this.velocity = new PVector(random(-2, 2), random(-2, 2));
    }

    void update() {
        location.add(velocity);
        velocity.limit(10);
    }

    void display() {
        ellipseMode(CENTER);
        ellipse(location.x, location.y, diameter, diameter);
    }

    void checkBoarderCollision() {
        if (location.x >= width - diameter || location.x < diameter) {
            velocity.x *= -1.1;
        } 
        if (location.y >= height - diameter || location.y < diameter) {
            velocity.y *= -1.1;
        }
    }

}
