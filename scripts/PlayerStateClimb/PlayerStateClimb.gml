function PlayerStateClimb(){
	key_jump = keyboard_check_pressed(vk_space);
	var onAWall = place_meeting(x-5,y,obj_climbable) - place_meeting(x+5,y,obj_climbable)
	if (sprite_index != spr_player_wallclimb){
		sprite_index = spr_player_wallclimb
			if (obj_player.image_xscale = 1){
		image_xscale =1} 
		else {
		image_xscale = -1
		}
	}

//Horizontal Collision
if (place_meeting(x+xsp,y,obj_collisionparent)){
	while(!place_meeting(x+sign(xsp)*2,y,obj_collisionparent)){
		x = x + sign(xsp);
	}
	xsp = 0;
}
x += xsp;

//Vertical Collision
if (place_meeting(x,y+ysp,obj_collisionparent)){
	while(!place_meeting(x,y+sign(ysp),obj_collisionparent)){
		y = y + sign(ysp);
	}
	ysp = 0;
}
y += ysp;
 var move = key_right - key_left;
 
 ysp = min(ysp + 1, 5)  

 if (key_jump && onAWall != 0) {
    ysp = -15;
    xsp = onAWall * 32;
 }

if (onAWall == 0 || place_meeting(x, y + 10, obj_collisionparent)) {
    state = PlayerState.free;
}
}