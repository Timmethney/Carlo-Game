obj_player.depth = -10;
xsp = 0;
ysp = 0;
grav = 0.14;
walksp = 8;

can_dash = true
dash_distance = 200
dash_time = 12
dash_cooldown = 60
dash_cooldown_counting = false;

stateFree = function() {
	//Movement calculations
var move = key_right - key_left;

if (place_meeting(x,y+1,obj_block)) && (key_jump)
{
	ysp = -20;
} else if(ysp <18){
	ysp += 1;
}
xsp = move * walksp;

//Dash input
if (can_dash) && (key_dash){
	can_dash = false;
	can_jump = 0
	dash_direction = point_direction(0,0,key_right-key_left,key_down-key_up);
	dash_sp = dash_distance/dash_time;
	dash_energy = dash_distance;
	state = StateDash;
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


//Horizontal Collision
if (place_meeting(x+xsp,y,obj_block)){
	while(!place_meeting(x+sign(xsp),y,obj_block)){
		x = x + sign(xsp);
	}
	xsp = 0;
}
x += xsp;

//Vertical Collision
if (place_meeting(x,y+ysp,obj_block)){
	while(!place_meeting(x,y+sign(ysp),obj_block)){
		y = y + sign(ysp);
	}
	ysp = 0;
}
y += ysp;
}

StateDash = function(){
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
	
	//Horizontal Collision
if (place_meeting(x+xsp,y,obj_block)){
	while(!place_meeting(x+sign(xsp),y,obj_block)){
		x = x + sign(xsp);
	}
	xsp = 0;
}
x += xsp;

//Vertical Collision
if (place_meeting(x,y+ysp,obj_block)){
	while(!place_meeting(x,y+sign(ysp),obj_block)){
		y = y + sign(ysp);
	}
	ysp = 0;
}
y += ysp;

//Ending the dash
dash_energy	-= dash_sp;
if (dash_energy <= 0) {
	ysp = 0
	xsp = 0
	state = stateFree;
	} 
	if (dash_energy <= 0 && key_up){
	ysp = -7
	xsp = 0
	state = stateFree;	
	}
}

state = stateFree;

