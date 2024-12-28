function PlayerStateFree(){
global.inAir = !place_meeting(x,y+1,obj_collisionparent)
var move = key_right - key_left;

if (bounce_time <= 0){
	
xsp = move * walksp;

//Horizontal Collision
if (place_meeting(x+xsp,y,obj_collisionparent)){
	while(!place_meeting(x+sign(xsp),y,obj_collisionparent)){
		x = x + sign(xsp);
	}
	xsp = 0;
}
x += xsp;
if (xsp !=0) image_xscale = sign(xsp);
}
//Vertical Collision
if (place_meeting(x,y+ysp,obj_collisionparent)){
	while(!place_meeting(x,y+sign(ysp),obj_collisionparent)){
		y = y + sign(ysp);
	}
	ysp = 0;
}
y += ysp;


scr_player_animation()

//Coyote time
canjump -= 1;
if (canjump > 0) && (key_jump)
{
	ysp = -20;
	canjump = 0;
}


//Climb state
    var onAWall = place_meeting(x - 1, y, obj_climbable) || place_meeting(x + 1, y, obj_climbable);
if (onAWall && global.inAir){
	state = PlayerState.climb
}
//Dash state
scr_dash_input()
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
if (key_attack && key_down && attack_timer <= 0 && global.inAir){
	state = PlayerState.downward_attack
}
}