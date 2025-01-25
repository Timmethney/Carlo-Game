function AttackStateComboAttack(){
ProcessAttack(spr_attack2, spr_attack2_hb)

	attack_timer = 6
	doneAttack = false

//End the attack
	 if(scr_animation_end()){
		 state = ATTACKSTATE.free
		 image_index = 0
	 }
}