public class Ball  {

    float diameter;
    PVector location;
    PVector velocity;
    PVector acceleration;
    float vMax;
    color paint;
    float rotationAngle;

    public Ball (float r) {
        this.diameter = r;
        this.location = new PVector(width/2, height/2);
        this.velocity = new PVector(0,0);
        this.acceleration = new PVector(random(-1, 2), random(-1, 2));
        this.vMax = 10;
        this.paint = color(random(255), random(255), random(255));
        this.rotationAngle = 0;
    }

    void update() {
        velocity.add(acceleration);
        location.add(velocity);
        velocity.limit(vMax);
    }

    void display() {
        rectMode(CENTER);
        noStroke();
        fill(paint);            
        // pushMatrix();
        // rotateObj();
        rect(location.x, location.y, diameter, diameter);
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
        if (location.x >= width - diameter || location.x < diameter) {
            velocity.x *= -1.4;
            this.paint= color(random(255), random(255), random(255));
        } 
        if (location.y >= height - diameter || location.y < diameter) {
            velocity.y *= -1.4;
            this.paint= color(random(255), random(255), random(255));
        }
    }

}
