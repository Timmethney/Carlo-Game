function MageStateChase(){
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	var playerDir = point_direction(obj_player.x, obj_player.y,x,y)
	var playerDirGen = sign(obj_player.x - x)
	
	scr_collision()
	if (playerDist < chaseDist && playerDist > chaseDist - attackDist){
		move_towards_point(obj_player.x,obj_player.y, 4)
	}

	if (playerDist <= attackDist){
		state = MAGESTATE.attack
		attackDone = false
	}
		
	if (playerDist > chaseDist){
		state = MAGESTATE.free	
	}
	
	if (sprite_index != spr_redmage_fly){
		image_index = 0
		sprite_index = spr_redmage_fly
	}
	image_xscale = sign(playerDirGen)
}