function WormStateFree(){
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	scr_collision()

	if (sprite_index != spr_worm_idle){
		sprite_index = spr_worm_idle
	}
	if (playerDist <= attackDist){
		state = WORMSTATE.attack	
	}
}