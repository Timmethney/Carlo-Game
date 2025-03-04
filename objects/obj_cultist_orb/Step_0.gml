image_speed = 0
if (!instance_exists(obj_cultist)) instance_destroy()
if (instance_exists(obj_cultist)){
var centerX = obj_cultist.x
var centerY = obj_cultist.y
var radius = 100  
var orbitSpeed = 6      



angle += orbitSpeed;  


if (angle >= 360) {
    angle = 0;
}


x = centerX + radius * cos(degtorad(angle)); 
y = centerY + radius * sin(degtorad(angle)); 
}
