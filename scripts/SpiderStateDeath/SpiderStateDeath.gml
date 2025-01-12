function SpiderStateDeath(){
image_speed = 1
if (sprite_index != spr_spider_death){
sprite_index = spr_spider_death
image_index = 0
lastFlash = true
lastBounce = true
flash = 6
}

if (scr_animation_end()){
 image_speed = 0	
}
if (image_speed == 0) death_time -= 1

if (death_time <= 0){
image_alpha -= 0.01	
}
if (image_alpha <= 0) {
	instance_destroy()
}
}