function PlayerStateClimb(){
	key_right = keyboard_check(vk_right);
	key_left = keyboard_check(vk_left);
	key_jump = keyboard_check_pressed(vk_space);
	var onAWall = place_meeting(x-5,y,obj_climbable) - place_meeting(x+5,y,obj_climbable)
	if (sprite_index != spr_player_wallclimb){
		sprite_index = spr_player_wallclimb
	}
	image_xscale = -onAWall
//Horizontal Collision
if (place_meeting(x+xsp,y,obj_collisionparent)){
	while(!place_meeting(x+sign(xsp),y,obj_collisionparent)){
		x = x + sign(xsp);
	}
	xsp = 0;
}
x += xsp
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

 	moveLock = max(moveLock - 1,0)
 if(moveLock <= 0){
	  xsp = move * walksp
	if (key_jump && onAWall != 0){
		 ysp = -15
		 xsp = onAWall * 8
		 moveLock = 10
	 }
 }
if (onAWall == 0) {
    show_debug_message("Exiting climb: no wall");
    state = PlayerState.free;
    sprite_index = spr_player_fall;
} else if (place_meeting(x, y + 10, obj_collisionparent)) {
    show_debug_message("Exiting climb: falling with no ground");
    state = PlayerState.free;
    sprite_index = spr_player_fall;
}
}