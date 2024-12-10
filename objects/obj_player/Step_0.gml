//Player inputs
scr_player_inputs()

//State function
state()

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


if (xsp !=0) image_xscale = sign(xsp) * 2;

if (key_dash && dash_energy > 25){
	sprite_index = spr_player_dash1;
} else if (key_dash && dash_energy > 25 && keyboard_check(ord("A"))){
	sprite_index = spr_player_dash2;
}
if (key_attack){
	sprite_index = spr_player_attack;
}