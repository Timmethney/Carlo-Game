function CampfireStateLit(){
	if (sprite_index != spr_lit_campfire){
	sprite_index = spr_lit_campfire
	image_speed = 1
	}
	var playerDist = point_distance(obj_player.x, obj_player.y,x,y)
if (playerDist > interactionRange) {
    // Destroy the button if the player moves out of range
    if (instance_exists(interactionInstance)) {
        with (interactionInstance) {
            instance_destroy();
        }
        interactionInstance = noone; // Clear the reference
    }
}

if (playerDist <= interactionRange) {
    // Create the button if it doesn't already exist
    if (!instance_exists(interactionInstance)) {
        interactionInstance = instance_create_layer(x, y - 50, "Instances", obj_interactionE);
    }	
		if (keyboard_check_pressed(ord("E")) && inMenu == false && sitTimer <= 0 ){
			sitTimer = 30
			inMenu = true
		}	
	}
			if (inMenu == true && keyboard_check_pressed(ord("E")) && sitTimer <= 0) inMenu = false
			if (sitTimer > 0) sitTimer--
			global.inMenu = false
			with (obj_campfire){
				if (inMenu == true){
				global.inMenu = true	
				} 
			}
}