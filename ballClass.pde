public class Ball  {

    float diameter;
    PVector location;
    PVector velocity;
    PVector acceleration;
    float vMax;
    color paint;
    float rotationAngle;
    boolean isColliding;

    public Ball (float r) {
        this.diameter = r;
        this.location = new PVector(width/2, height/2);
        this.velocity =  new PVector(random(-1, 2), random(-1, 2));
        this.acceleration = new PVector(random(-1, 2), random(-1, 2));
        this.vMax = 10;
        this.paint = color(random(255), random(255), random(255));
        this.rotationAngle = 0;
        this.isColliding = false;
    }

    void update() {
       // velocity.add(acceleration);
        location.add(velocity);
        velocity.limit(vMax);
    }

    void display() {
        ellipseMode(CENTER);
        noStroke();
        fill(paint);            
        // pushMatrix();
        // rotateObj();
        ellipse(location.x, location.y, diameter, diameter);
        // popMatrix();
    }

    // void rotateObj() {      
    //     translate(location.x, location.y);
    //     rotate(rotationAngle);
    //     for(float i =0; i <= 2; i++) {
    //         rotationAngle += 0.01;
    //         if (rotationAngle >= 2) {
    //             rotationAngle = 0;
    //         }
    //     } 
    // }

    void checkBoarderCollision() {
        if (location.x > width - diameter/2 || location.x < diameter/2) {
            velocity.x *= -1;
            this.paint= color(random(255), random(255), random(255));
        } 
        if (location.y > height - diameter/2 || location.y < diameter/2) {
            velocity.y *= -1;
            this.paint= color(random(255), random(255), random(255));
        }
    }

}
