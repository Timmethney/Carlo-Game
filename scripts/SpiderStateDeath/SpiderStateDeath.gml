function SpiderStateDeath(){
image_speed = 1
sprite_index = spr_spider_death
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