class Urchin extends Projectile{ //TODO: fire damage & particles
  Urchin(float x, float y, float angle) {
    super(x, y, angle);
    position = new PVector(x, y);
    size = new PVector(15, 15);
    radius = 7.5;
    maxSpeed = 12;
    speed = maxSpeed;
    damage = 10;
    pierce = 1;
    this.angle = angle;
    angleTwo = angle;
    angularVelocity = 20; //degrees mode
    sprite = loadImage("sprites/projectiles/urchin.png");
    isTrail = true;
    trail = "fire";
    buff = "burning";
  }    
}  