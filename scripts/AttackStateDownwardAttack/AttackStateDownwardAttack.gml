function AttackStateDownwardAttack(){
ProcessAttack(spr_attackdown, spr_attackdown_hb)
  	attack_timer = 6
	downward_timer = 12
	
//End the attack
	 if(scr_animation_end()){
		 state = ATTACKSTATE.free
		 image_index = 0
	 }
}