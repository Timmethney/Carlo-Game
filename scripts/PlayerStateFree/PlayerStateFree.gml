function PlayerStateFree(){
var move = key_right - key_left;
xsp = move * walksp;

//Coyote time
canjump -= 1;
if (canjump > 0) && (key_jump)
{
	ysp = -20;
	canjump = 0;
}

scr_collision()
scr_dash_input()
scr_player_animation()

if (xsp !=0) image_xscale = sign(xsp);

//Dash state
if (key_dash && dash_energy > 50){
	sprite_index = spr_player_dash;
} 

//Attack state
attack_timer -= 1
if (key_attack && attack_timer <= 0){
	state = PlayerState.attack
}

//Combo state
if (attack_timer > -20 && attack_timer < 6) {
	canCombo = true
} else {
	canCombo = false
	}
if (canCombo == false) doneAttack = false
if (key_attack && canCombo && doneAttack){
	state = PlayerState.combo_attack	
}

//Upward Attack State
if (key_attack && key_up && attack_timer <= 0){
	state = PlayerState.upward_attack
}

//Downward Attack State
global.inAir = !place_meeting(x,y+1,obj_block)

if (key_attack && key_down && attack_timer <= 0 && global.inAir){
	state = PlayerState.downward_attack
}
}