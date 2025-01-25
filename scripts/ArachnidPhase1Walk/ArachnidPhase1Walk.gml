function ArachnidPhase1Walk(){
	if (sprite_index != spr_arachnid_walk){
		sprite_index = spr_arachnid_walk
		xsp = 10
	}
	scr_collision()
	if (place_meeting(x+20,y,obj_collisionparent)){
		xsp = -walksp
		if (collideTimer <= 0){
			collideTimer = 10
			collideCount += 1
		}
	}
	if (place_meeting(x-20,y,obj_collisionparent)){
		xsp = walksp
		if (collideTimer <= 0){
			collideTimer = 10
			collideCount += 1
		}
	}
	if (xsp != 0){
	image_xscale = -sign(xsp)
	}
	image_speed = 1
	if (collideCount >= random_range(4,7)){
		state1 = choose(PHASE1.rain, PHASE1.shoot)
		collideCount = 0
		shootCount = 0
		shootCharge = 60
	}
}