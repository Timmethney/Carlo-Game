if ScreenPause(){
	speed = 0
	exit} else {
		speed = bulletSpeed
	}
initSpeed--
image_speed = 0
image_angle = direction;
image_xscale += scale_speed_x;
image_yscale += scale_speed_y;

life--
if (floor(life) == 0){
	instance_destroy()	
}