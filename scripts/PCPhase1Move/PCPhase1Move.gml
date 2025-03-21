function PCPhase1Move(){
	
    if (sprite_index != spr_bluemage_fly){
        sprite_index = spr_bluemage_fly;
		movesp = 10
        var move = choose(
            function() { moveCenter(); },
            function() { moveDown(); },
            function() { moveLeft(); },
            function() { moveRight(); },
            function() { moveRightDown(); },
            function() { moveLeftDown(); }
        );
        move(); 
    }    


    if (targetX < x) {
        image_xscale = -1; 
    } else if (targetX > x) {
        image_xscale = 1;  
    }


    if (point_distance(x, y, targetX, targetY) >= movesp + 30) {
        move_towards_point(targetX, targetY, movesp); 
    } else {
        if (stunCount < random_range(2, 3)){
            x = targetX;
            y = targetY;
            speed = 0;
            move_towards_point(x, y, 0);
            recuperateTime = 60;
            state = PCPHASE1.recuperate;
        } else {
            moveCenter();

            if (point_distance(x, y, targetX, targetY) < movesp + 30) {
                scr_collision();
                x = targetX;
                y = targetY;
                speed = 0;
                move_towards_point(x, y, 0); 
                state = PCPHASE1.stun;

                with(obj_camera){
                    shakeCamera(20);
                }
            }    
        }
    }
}
