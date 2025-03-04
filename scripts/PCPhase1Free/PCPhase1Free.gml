function PCPhase1Free(){
	if (sprite_index != spr_bluemage_idle){
		sprite_index = spr_bluemage_idle
		image_index = 0
	}
	
	if (scr_animation_end()){
		state = PCPHASE1.move	
	}
}