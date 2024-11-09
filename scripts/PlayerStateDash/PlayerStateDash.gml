function PlayerStateDash(){
//Move via the dash
	xsp = lengthdir_x(dash_sp, dash_direction)
	ysp = lengthdir_y(dash_sp, dash_direction)
	
	//Trail effect
	with (instance_create_depth(x,y,depth+1,obj_trail)){
		key_right = keyboard_check(vk_right);
		key_left = keyboard_check(vk_left);
		var move = key_right - key_left;
		walksp = 8;
		xsp = move * walksp;
		image_speed = 0;
		sprite_index = other.sprite_index;
		if (xsp !=0) image_xscale = sign(xsp) * 2;
		image_yscale = 2;
		image_blend = #a6a6a6;
		image_alpha = 0.7;
	}
	
scr_collision()

//Ending the dash
dash_energy	-= dash_sp;
if (dash_energy <= 0) {
	ysp = 0
	xsp = 0
	state = stateFree;
	} 
if (dash_energy <= 25 && key_up){
	ysp = -7
	xsp = 0
	state = stateFree;	
	} 
if (dash_energy <= 25 && key_down){
	ysp = 10
	xsp = 0
	state = stateFree
	}
}