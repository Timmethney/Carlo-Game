function PCPhase1Attack1(){
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	var playerDir = point_direction(x,y,obj_player.x,obj_player.y)
	var playerDirGen = sign(obj_player.x - x)
	var _index = ceil(image_index)

	if (attackTime <= 0){
		if (sprite_index != spr_bluemage_attack){
			image_index = 0
			sprite_index = spr_bluemage_attack	
			image_xscale = sign(playerDirGen)
		}

		if (_index == 3){
				if (attackDone == false){
					attackTimer = 60
				    attackDone = true
					direction = playerDir
					bulletSpeed = 5
					bul_type_create(bullet1,x,y,direction,bulletSpeed)
				}
			}
	}

	if (scr_animation_end()){
		stunCount++
		state = PCPHASE1.move
		attackTime = 60
	}
}