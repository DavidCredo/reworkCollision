public class Ball  {

    float diameter;
    PVector location;
    PVector velocity;
    PVector acceleration;
    float vMax;

    public Ball (float r) {
        this.diameter = r;
        this.location = new PVector(width/2, height/2);
        this.velocity = new PVector(0,0);
        this.acceleration = new PVector(random(-1, 1), random(-1, 1));
        this.vMax = 10;
    }

    void update() {
        velocity.add(acceleration);
        location.add(velocity);
        velocity.limit(vMax);
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
