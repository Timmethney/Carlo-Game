//Player inputs
scr_player_inputs()

//Player camera
scr_shorter_camera()
scr_player_camera()

//Player states
switch (state) {
    case PlayerState.free:
        // Handle free movement
		PlayerStateFree()
        break;

    case PlayerState.dash:
        // Handle dashing mechanics
		PlayerStateDash()
        break;

    case PlayerState.attack:
        // Handle attacking behavior
		PlayerStateAttack()
        break;
}
//Movement animations
if (!place_meeting(x, y+1, obj_block)){
    if (sign(ysp) < 0){
		image_speed	= 0;
		sprite_index = spr_player_jump;
	} else {
		image_speed = 1;
		sprite_index = spr_player_fall;
	}
} else {
	image_speed = 1;
	if (xsp == 0){
		sprite_index = spr_player_idle;
	} else {
		sprite_index = spr_player_walk;
}
}


if (xsp !=0) image_xscale = sign(xsp);

if (key_dash && dash_energy > 50){
	sprite_index = spr_player_dash;
} 
if (key_attack){
	sprite_index = spr_player_attack1;
}