function SpiderStateDeath(){
	image_speed = 1
	if (sprite_index != spr_spider_death){
		sprite_index = spr_spider_death
		image_index = 0
		lastFlash = true
		lastTime = true
		flash = 6
		with (obj_player) target_score += 100
		scr_enemyXP()
	}
	scr_enemyDespawn()
}