function AttackStateFree(){
	mask_index = noone
	image_index = 0
	
	//Attack state
	if (attack_timer > 0) attack_timer -= 1
	if (key_attack && attack_timer <= 0){
		state = ATTACKSTATE.attack
	}
	
	//Combo state
if (attack_timer > -20 && attack_timer < 6) {
	canCombo = true
} else {
	canCombo = false
	}
if (canCombo == false) doneAttack = false
if (key_attack && canCombo && doneAttack){
	state = ATTACKSTATE.combo
}

//Upward Attack State
	if (key_attack && key_up && attack_timer <= 0){
		state = ATTACKSTATE.upward
	}

//Downward Attack State
if (downward_timer > 0) downward_timer -= 1
	if (key_attack && key_down && attack_timer <= 0 && global.inAir && downward_timer <= 0){
		state = ATTACKSTATE.downward
	}
}