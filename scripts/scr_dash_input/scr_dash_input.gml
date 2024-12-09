function scr_dash_input(){
//Dash input
if (can_dash) && (key_dash){
	can_dash = false;
	can_jump = 0
	dash_direction = point_direction(0,0,key_right-key_left,key_down-key_up);
	dash_sp = dash_distance/dash_time;
	dash_energy = dash_distance;
	state = PlayerState.dash;
	dash_cooldown_counting = true
}
//Dash cooldown
if (dash_cooldown <= 0) {
	can_dash = true;
	dash_cooldown_counting = false
	dash_cooldown = 60
}
if (dash_cooldown_counting = true){
	dash_cooldown -= 1
}
}