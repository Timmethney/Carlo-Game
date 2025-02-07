function SpiderStateFree(){
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	scr_collision()
	if (place_meeting(x+1,y,obj_collisionparent)){
		xsp = -walksp
	}
	if (place_meeting(x-1,y,obj_collisionparent)){
		xsp = walksp
	}
	if (xsp != 0){
	image_xscale = -sign(xsp)
	sprite_index = spr_spider_walk
	}
	image_speed = 1
	//States
	if (!place_meeting(x+100,y+5,obj_collisionparent)){
		xsp  = -walksp	
	}
	if (!place_meeting(x-100,y+5,obj_collisionparent)){
		xsp  = walksp	
	}
	if (playerDist <= chaseDist){
	state = SPIDERSTATE.chase
	}
}