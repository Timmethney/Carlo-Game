function AttackStateComboAttack(){
ProcessAttack(spr_attack2)

attack_timer = 6
doneAttack = false


//End the attack
	 if(scr_animation_end()){
		 state = ATTACKSTATE.free
	 }
}