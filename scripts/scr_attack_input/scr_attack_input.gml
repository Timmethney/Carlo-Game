function scr_attack_input(){
//Attack input
if (can_attack) && (key_attack){
	can_attack = false;
	state = stateAttack;
	dash_cooldown_counting = true;
}
	
//Attack cooldown
if (attack_cooldown <= 0) {
	can_attack = true;
	attack_cooldown_counting = false
	attack_cooldown = 30
}
if (attack_cooldown_counting = true){
	attack_cooldown -= 1
}
}