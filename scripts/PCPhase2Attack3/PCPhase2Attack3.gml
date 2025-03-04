function PCPhase2Attack3(){
    if (sprite_index != spr_purplemage_fly && sprite_index != spr_purplemage_attack){
        sprite_index = spr_purplemage_fly;
		movesp = 15
		moveCenter()
	}
	var playerDir = point_direction(x,y,obj_player.x,obj_player.y)
	var playerDirGen = sign(obj_player.x - x)
	var _index = ceil(image_index)

	if (attackTime <= 0){
		if (sprite_index != spr_purplemage_attack){
			image_index = 0
			sprite_index = spr_purplemage_attack	
			image_xscale = sign(playerDirGen)
		}

		if (_index == 3 && sprite_index = spr_purplemage_attack){
				if (attackDone == false){
					attackTimer = 60
				    attackDone = true
					direction = playerDir
					bulletSpeed = 8
					bul_type_create(bullet5,x,y,direction,bulletSpeed)
					with (obj_camera) shakeCamera(30)
				}
			}
	}

	if (scr_animation_end()){
			state = PCPHASE2.move
			stunCount++
			attackTime = 60
	} 
}