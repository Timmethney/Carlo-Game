function PCPhase2Recuperate(){
	 if (sprite_index != spr_purplemage_idle){
		sprite_index = spr_purplemage_idle
		image_index = 0
	 }
	 if (recuperateTime <= 0){
		 Exclamation()
		state = choose(PCPHASE2.attack1, PCPHASE2.attack2, PCPHASE2.attack3)
	 }
}