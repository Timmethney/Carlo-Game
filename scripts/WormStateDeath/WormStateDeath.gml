function WormStateDeath(){
	if (sprite_index != spr_worm_death){
		sprite_index = spr_worm_death	
		image_index = 0
		lastFlash = true
		lastTime = true
		flash = 6
		with (obj_player) target_score += 100
	}
	
	if (scr_animation_end()){
		image_speed = 0

	}
	if (image_speed == 0) death_time -= 1

	if (death_time <= 0){
		image_alpha -= 0.01	
	}
	if (image_alpha <= 0) {
		instance_destroy()
	}
}