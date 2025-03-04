function PCPhase2Stun(){
	var onGround = place_meeting(x,y+1,obj_collisionparent)
	scr_collision()
	if(ysp < 18){
		ysp += 1;
	}
	if (!onGround){
		if (sprite_index != spr_purplemage_death){ 
			sprite_index = spr_purplemage_death
			image_index = 0	
			stunTime = stunTimeMax
		}
		if (image_index == 2){
			image_index = 0
		}
	}
	if (onGround && stunTime > 0){
		image_index = 3
		stunTime--
	}
	if (stunTime <= 0){
		if (sprite_index != spr_purplemage_idle){
			sprite_index = spr_purplemage_idle
			Exclamation()
			attackTime = 30
		}
		if (attackTime <= 0){
			stunCount = 0
			state = PCPHASE2.attack2
		}
	}
}

