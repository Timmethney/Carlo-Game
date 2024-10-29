//Player inputs
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check(vk_space);
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_dash = keyboard_check(vk_shift);


state();

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

if (key_dash && dash_energy > 0){
	sprite_index = spr_player_dash;
}