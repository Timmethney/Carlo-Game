function AttackStateDownwardAttack(){
ProcessAttack(spr_attackdown)
  	attack_timer = 6
	
//End the attack
	 if(scr_animation_end()){
		 state = ATTACKSTATE.free
		 image_index = 0
	 }
}