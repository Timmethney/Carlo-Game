function PlantStateAttack1(){
var playerDist = point_distance(obj_player.x, obj_player.y, obj_plant.x,obj_plant.y)
var playerDirection = sign(obj_player.x - x)
scr_collision()

	if (playerDist > attackDist && turn_time == 0){
	state = PLANTSTATE.free
	turn_time = 0
	} 
	if (sprite_index != spr_plant_biteR){
	sprite_index = spr_plant_biteR	
	image_index = 0
	firstAttack = true
	}
	
	if (turn_time <= 0){
	image_xscale = sign(playerDirection)
	turn_time = 90
	}
	if (turn_time > 0){
		turn_time -= 1
	}
	if (scr_animation_end()){
		if (playerDist < attackDist){
			state = PLANTSTATE.attack2
		} else {
			state = PLANTSTATE.free
			turn_time = 0
		}
	}
}

