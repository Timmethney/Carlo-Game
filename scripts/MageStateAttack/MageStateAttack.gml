function MageStateAttack(){
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	var playerDir = point_direction(x,y,obj_player.x,obj_player.y)
	var playerDirGen = sign(obj_player.x - x)
	var _index = ceil(image_index)
	
	speed = 0
	scr_collision()
	
	if (playerDist > attackDist){
		state = MAGESTATE.chase	
	}
	if (attackTimer <= 0){
		if (sprite_index != spr_redmage_attack){
			sprite_index = spr_redmage_attack	
			image_xscale = sign(playerDirGen)
		}
		if (_index == 3){
			if (attackDone == false){
				attackDone = true
				attackTimer = 30
				direction = playerDir
				bul_type_create(bullet,x,y,direction,bulletSpeed)
			}
		}
	}

	if (scr_animation_end()){
		state = MAGESTATE.free	
	}
}