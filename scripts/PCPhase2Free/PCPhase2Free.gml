function PCPhase2Free(){
	if (sprite_index != spr_purplemage_idle){
		sprite_index = spr_purplemage_idle
		image_index = 0
		instance_create_layer(x,y,"Enemies",obj_cultist_orb)
		with (obj_camera) shakeCamera(20)
	}
	
	if (scr_animation_end()){
		state = PCPHASE2.move	
	}
}
