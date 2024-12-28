function PlayerStateClimb() {
    key_jump = keyboard_check_pressed(vk_space);
    var onAWall = place_meeting(x - 1, y, obj_climbable) || place_meeting(x + 1, y, obj_climbable);
    
    if (sprite_index != spr_player_wallclimb) {
        sprite_index = spr_player_wallclimb;
        image_xscale = (obj_player.image_xscale == 1) ? 1 : -1;
    }

    // Horizontal Collision
    if (place_meeting(x + xsp, y, obj_collisionparent)) {
        while (!place_meeting(x + sign(xsp), y, obj_collisionparent)) {
            x += sign(xsp); 
        }
        xsp = 0;
    }
    x += xsp;

    // Vertical Collision
    if (place_meeting(x, y + ysp, obj_collisionparent)) {
        while (!place_meeting(x, y + sign(ysp), obj_collisionparent)) {
            y += sign(ysp);
        }
        ysp = 0;
    }
    y += ysp;

    var move = key_right - key_left;
    ysp = min(ysp + 1, 5);

    if (key_jump && onAWall && place_meeting(x + 1, y, obj_climbable) ) {
		bounceleft_time = 15
		startedLeft = true
    }
	if (key_jump && onAWall && place_meeting(x - 1, y, obj_climbable) ) {
		bounceright_time = 15
		startedRight = true
    }
    if (!onAWall || place_meeting(x, y + 10, obj_collisionparent)) {
        state = PlayerState.free;
    }
}