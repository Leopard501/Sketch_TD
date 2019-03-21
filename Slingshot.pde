class Slingshot extends Turret{
  Slingshot(float x, float y) {
    super(x,y);
    target = new PVector(x, -height);
    position = new PVector(x,y);
    size = new PVector(50,50);
    maxHP = 20;
    twHP = maxHP;
    hit = false;
    delay = 0; //default: 1500 milliseconds
    delay += ((int) random(-(delay/10),delay/10)); //injects 10% randomness so all don't fire at once
    delayTime = delay;
    pjSpeed = 12;
    error = 5; //set to 360 for a fun time. default: 5 degrees
    numFireFrames = 34;
    numLoadFrames = 59;
    spriteLocation = "sprites/towers/turrets/slingshot/";
    fireFrames = new PImage[numFireFrames];
    loadFrames = new PImage[numLoadFrames];
    loadSprites();
    spriteType = 0;
    frame = 0;
    loadDelay = 0;
    loadDelayTime = 0;
  }  
  @Override
  void fire(){ //needed to change projectile fired
    angle += radians(random(-error,error));
    delayTime = millis() + delay; //waits this time before firing
    projectiles.add(new Pebble(position.x-size.x/2,position.y-size.y/2, angle));
    target = new PVector(position.x, -height);
  }  
}
