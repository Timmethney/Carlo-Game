function PCPhase1Recuperate(){
	 if (sprite_index != spr_bluemage_idle){
		sprite_index = spr_bluemage_idle
		image_index = 0
	 }
	 if (recuperateTime <= 0){
		 Exclamation()
		state = PCPHASE1.attack1
	 }
}