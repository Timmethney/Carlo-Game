function SpiderStateAttack(){
 scr_collision()
 xsp = 0
 image_speed = 1
 sprite_index = spr_spider_attack
 if (scr_animation_end()){
	state = SPIDERSTATE.chase 
 }
}