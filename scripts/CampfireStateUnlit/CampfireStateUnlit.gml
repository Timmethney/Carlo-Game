function CampfireStateUnlit() {
    var playerDist = point_distance(obj_player.x, obj_player.y, x, y);

    image_speed = 0;

    if (startFire == true) {
        image_speed = 1; 
    }

    // Player is within interaction range
    if (playerDist <= interactionRange) {
        // Create the interaction button if it doesn't already exist
        if (!instance_exists(interactionInstance)) {
            interactionInstance = instance_create_layer(x, y - 50, "Instances", obj_interactionE);
        }
        // Start the fire when "E" is pressed
        if (keyboard_check_pressed(ord("E"))) {
            startFire = true;
        }
    }
    // Player moves out of interaction range
    if (playerDist > interactionRange) {
        if (instance_exists(interactionInstance)) {
            with (interactionInstance) {
                instance_destroy();
            }
            interactionInstance = noone; 
        }
    }

    if (scr_animation_end()) {
        state = CAMPFIRESTATE.lit;
    }
}
