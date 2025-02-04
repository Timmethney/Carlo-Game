function MageStateAttack(){
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	var playerDir = point_direction(obj_player.x, obj_player.y,x,y)
	var playerDirGen = sign(obj_player.x - x)
	var _index = ceil(image_index)
	
	speed = 0
	scr_collision()
	
	if (playerDist > attackDist){
		state = MAGESTATE.chase	
	}
	
	if (sprite_index != spr_redmage_attack){
		sprite_index = spr_redmage_attack	
		image_xscale = sign(playerDirGen)
	}
	if (attackTimer == 1){
		if (_index == 3){
			attackTimer = 1
			instance_create_layer(x,y,"Instances",obj_red_fire)
		}
	}
	if (scr_animation_end()){
		state = MAGESTATE.free	
		attackTimer = 10
	}
}