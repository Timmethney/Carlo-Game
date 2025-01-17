function CampfireStateLit(){
	if (sprite_index != spr_lit_campfire){
	sprite_index = spr_lit_campfire
	image_speed = 1
	}
	var playerDist = point_distance(obj_player.x, obj_player.y,x,y)
	if (playerDist > interactionRange && instance_exists(obj_interactionE)){
	with(obj_interactionE){
		instance_destroy()
	}
}	
	if (playerDist <= interactionRange){
		if (!instance_exists(obj_interactionE)) instance_create_layer(x, y - 50, "Instances", obj_interactionE)	
		if (keyboard_check_pressed(ord("E")) && global.inMenu == false && sitTimer <= 0 ){
			sitTimer = 30
			global.inMenu = true
		}	
	}
			if (global.inMenu == true && keyboard_check_pressed(ord("E")) && sitTimer <= 0)global.inMenu = false
			if (sitTimer > 0) sitTimer--
}