function scr_enemyDespawn(){
	if (scr_animation_end()) image_speed = 0
	if (image_speed == 0) deathTime -= 1
	if (deathTime <= 0) image_alpha -= 0.01	
	if (image_alpha <= 0) instance_destroy()
}