function AttackStateAttack(){
ProcessAttack(spr_attack1)
  	attack_timer = 6
	doneAttack = true
	
//End the attack
	 if(scr_animation_end()){
		 state = ATTACKSTATE.free
		 image_index = 0
	 }
}
