var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, oWall);
var onAWall = place_meeting(x-5, y, oWall) - place_meeting(x+5, y, oWall);
 
mvtLocked = max(mvtLocked - 1, 0);
 
if (onAWall != 0) ySpeed = min(ySpeed + 1, 5);
else ySpeed++;
 
if (mvtLocked <= 0) {
    if (xDirection != 0) image_xscale = xDirection;
    xSpeed = xDirection * spd;
 
    if (jump) {
        if (onTheGround) {
            ySpeed = -15;
        } 
    
        if (onAWall != 0) {
            ySpeed = -15;
            xSpeed = onAWall * spd;
            mvtLocked = 10;
        }
    }
}
 
if (onTheGround) {
    if (xDirection != 0) { sprite_index = sPlayerRun_strip7; } 
    else { sprite_index = sPlayerIdle_strip4; }
} else if (onAWall != 0) {
    image_xscale = onAWall;
    sprite_index = sPlayerSlide;
} else {
    sprite_index = sPlayerJump;
}
 
if (place_meeting(x + xSpeed, y, oWall)) { 
    
    while (!place_meeting(x + sign(xSpeed), y, oWall)) {
        x += sign(xSpeed);
    }
    xSpeed = 0; 
}
 
x += xSpeed;
 
 
if (place_meeting(x, y + ySpeed, oWall)) { 
    
    while (!place_meeting(x, y + sign(ySpeed), oWall)) {
        y += sign(ySpeed);
    }
    
    ySpeed = 0; 
}
 
y += ySpeed;
