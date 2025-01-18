function PlantStateFree(){
var playerDist = point_distance(obj_player.x, obj_player.y, x,y)
scr_collision()

if (sprite_index != spr_plant_idle){
sprite_index = spr_plant_idle
image_index = 0 
}
	if (playerDist <= attackDist){
	state = PLANTSTATE.attack1
	}
}