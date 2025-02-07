function WormStateAttack(){
	var onGround = place_meeting(x,y+1,obj_collisionparent)
	var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
	var playerDir = sign(obj_player.x - x)
	var currentDir = playerDir
	var _index = ceil(image_index)
	if (playerDist > attackDist){
		state = WORMSTATE.free	
	}
	if (jumpCD <= 0){
		jumpCD = 120
		if (sprite_index != spr_worm_attack){
			image_index = 0
			image_xscale = sign(playerDir)
			sprite_index = spr_worm_attack
			jump = true
		}
	}
	if (jump == true && onGround && _index == 3){
		ysp = -14
		jumpTimer = 2
	}
	if (!onGround){
			xsp = sign(currentDir) * 7
	}
	if (onGround){
		xsp = 0	
	}
	jumpTimer--
	if (jumpTimer == 0){
		jump = false	
	}
	if (scr_animation_end()){
		state = WORMSTATE.free	
	}
}