function CampfireStateUnlit() {
    var playerDist = point_distance(obj_player.x, obj_player.y, x, y);

    image_speed = 0;

    if (startFire == true) {
        image_speed = 1; 
    }

        // Set checkpoint and start anim
        if (place_meeting(x,y-30,obj_player)) {
            startFire = true;
			global.checkpoint = id;
			global.checkpointX = x;
			global.checkpointY = y;
			global.checkpointR = room;
        }
    
    if (scr_animation_end()) {
        state = CAMPFIRESTATE.lit;
    }
}
