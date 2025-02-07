function MageStateFree(){
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	var playerDir = point_direction(obj_player.x, obj_player.y,x,y)
	var playerDirGen = sign(obj_player.x - x)
	
	scr_collision()

	
	if (attackTimer <= 0){
		if (playerDist <= chaseDist){
			state = MAGESTATE.chase
		}	
	}
	if (playerDist > chaseDist){
		xsp = 0
		ysp = 0
		if (sprite_index != spr_redmage_idle){
			sprite_index = spr_redmage_idle
		}
	}
}