function AttackStateComboAttack(){
ProcessAttack(spr_attack2)

//Trigger Combo Chain
if(key_attack) && (image_index > 2){
	state = ATTACKSTATE.attack
}
	
//End the attack
	 if(scr_animation_end() && turn_timer == 0){
		 state = ATTACKSTATE.nonattack
		 turn_timer	= 3
	 }
}