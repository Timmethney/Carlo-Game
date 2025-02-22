function BloatedStateSingleThrow(){
	var _index = floor(image_index)
	var playerDir = point_direction(x,y,obj_player.x,obj_player.y)
	
	if (sprite_index != spr_bloated_single_throw){
		sprite_index = spr_bloated_single_throw
		image_index = 0
		bulletSpeed = bulletSpeedNormal
		bulletSpeed = bulletSpeed + 10
	}
	if (_index == 4 && attackTime <= 0){
		direction = playerDir
		bul_type_create(bullet2,x,y,direction,bulletSpeed)
		attackTime = 120
	}
	if (scr_animation_end()){
		recuperateTime = 90
		state = BLOATEDSTATE.recuperate
	}
}