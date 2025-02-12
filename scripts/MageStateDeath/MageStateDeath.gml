function MageStateDeath(){
	var onGround = place_meeting(x,y+1,obj_collisionparent)
	scr_collision()
	if(ysp < 18){
		ysp += 1;
	}

	if (!onGround){
		if (sprite_index != spr_redmage_death){ 
			sprite_index = spr_redmage_death
			image_index = 0	
			lastFlash = true
			lastTime = true
			flash = 6
			with (obj_player) target_score += 150
		}
		if (image_index == 2){
			image_index = 0
		}
	}
	if (onGround){ 
		image_speed = 1
	}
	if (scr_animation_end()) image_speed = 0
	if (image_speed == 0) death_time -= 1
	if (death_time <= 0) image_alpha -= 0.01	
	if (image_alpha <= 0) instance_destroy()
}