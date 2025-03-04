function PCPhase2LastStride(){
    if (sprite_index != spr_purplemage_fly){
        sprite_index = spr_purplemage_fly;
		movesp = 15
        var move = choose(
            function() { moveCenter();},
            function() { moveDown(); },
            function() { moveLeft(); },
            function() { moveRight(); },
            function() { moveRightDown(); },
            function() { moveLeftDown(); }
        );
        move(); 
		instance_create_layer(x,y,"Enemies",obj_cultist_orb)
    }    
			stunCount = 20


    if (targetX < x) {
        image_xscale = -1; 
    } else if (targetX > x) {
        image_xscale = 1;  
    }


    if (point_distance(x, y, targetX, targetY) >= movesp + 30) {
        move_towards_point(targetX, targetY, movesp); 
    } else {
            if (point_distance(x, y, targetX, targetY) < movesp + 30) {
                scr_collision();
                x = targetX;
                y = targetY;
                speed = 0;
                move_towards_point(x, y, 0); 
				phase = PHASE.one
                state = PCPHASE1.attack2

                with(obj_camera){
                    shakeCamera(20);
                }
            }    
        }
	}

