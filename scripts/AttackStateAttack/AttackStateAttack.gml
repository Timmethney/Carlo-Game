function AttackStateAttack(){
ProcessAttack(spr_attack1)

//Trigger Combo Chain
if(key_attack) && (image_index > 1){
	state = ATTACKSTATE.combo
}
	
//End the attack
	 if(scr_animation_end() && turn_timer == 0){
		 state = ATTACKSTATE.nonattack
		 turn_timer	= 3
	 }
}
