function PlayerStateSit(){
	global.playerHealth = global.playerHealth_max
	var onTheGround = place_meeting(x, y + 1, obj_collisionparent);
	xsp = 0
	//Vertical Collision
if (place_meeting(x,y+ysp,obj_collisionparent)){
	while(!place_meeting(x,y+sign(ysp),obj_collisionparent)){
		y = y + sign(ysp);
	}
	ysp = 0;
}
y += ysp;

if (doSit == true){
		image_speed = 1
		sprite_index = spr_player_sit
		doSit = false
}
	if (scr_animation_end()){
		sprite_index = spr_player_sit_idle
	}
	
	if (global.inMenu == false){
		if (instance_exists(obj_campfire_menu)){
		with (obj_campfire_menu) instance_destroy()	
		}
	state = PlayerState.free	
	}
	if (global.inMenu == true && onTheGround){
		if (!instance_exists(obj_campfire_menu)) instance_create_layer(x,y,"Instances",obj_camp_menu)
	}
	show_debug_message(global.inMenu)
}