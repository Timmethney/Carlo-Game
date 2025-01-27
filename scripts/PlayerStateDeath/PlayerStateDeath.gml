function PlayerStateDeath(){
	if (sprite_index != spr_player_death){
		image_index = 0
		image_speed = 1
		sprite_index  = spr_player_death
	}
	
	//Vertical Collision
if (place_meeting(x,y+ysp,obj_collisionparent)){
	while(!place_meeting(x,y+sign(ysp),obj_collisionparent)){
		y = y + sign(ysp);
	}
	ysp = 0;
}
y += ysp;

if (death_time_start == true) death_time -= 1

if (scr_animation_end()){
	image_speed = 0
	death_time_start = true

}
//End death state
	if(death_time <= 0){
	instance_create_depth(0,0,-9999, obj_fade)
	death_time = 120
	death_time_start = false
	if (global.checkpointR != room){
	room = global.checkpointR
	}
	x = global.checkpointX 
	y = global.checkpointY
	image_speed = 1
	global.playerHealth = global.playerHealth_max
	invincibility = 180 + death_time
	state = PlayerState.free
	}
}