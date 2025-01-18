function SpiderStateChase(){
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	var playerDirection = sign(obj_player.x - x)
	scr_collision()
	
	xsp = runsp * playerDirection
	
	image_xscale = -sign(xsp)
	sprite_index = spr_spider_walk	
	image_speed = runsp/walksp
	
	if (playerDist > chaseDist){
		state = SPIDERSTATE.free	
	} else if (playerDist <= attackDist){
		state = SPIDERSTATE.attack
	}
}