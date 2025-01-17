function CampfireStateUnlit(){
var playerDist = point_distance(obj_player.x, obj_player.y,x,y)
image_speed = 0
if (startFire == true){
	image_speed = 1	
}
if ( playerDist <= interactionRange){
	
	if (!instance_exists(obj_interactionE)) instance_create_layer(x, y - 50, "Instances", obj_interactionE)
	
	if (keyboard_check_pressed(ord("E"))){
		startFire = true
	 }
}
if (playerDist > interactionRange && instance_exists(obj_interactionE)){
	with(obj_interactionE){
		instance_destroy()
	}
}
if (scr_animation_end()){
	state = CAMPFIRESTATE.lit
}
}