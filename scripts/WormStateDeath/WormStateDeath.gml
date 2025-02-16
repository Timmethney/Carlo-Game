function WormStateDeath(){
	if (sprite_index != spr_worm_death){
		sprite_index = spr_worm_death	
		image_index = 0
		lastFlash = true
		lastTime = true
		flash = 6
		with (obj_player) target_score += 100
	}
	scr_enemyDespawn()
}