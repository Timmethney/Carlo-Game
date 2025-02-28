function BloatedStateDeath(){
	image_speed = 1
	if (sprite_index != spr_bloated_death){
		global.otherBloatedDeath = true
		sprite_index = spr_bloated_death
		image_index = 0
		lastFlash = true
		lastTime = true
		flash = 6
		with (obj_player) target_score += 600
		scr_enemyXP()
	}
	scr_enemyDespawn()
}