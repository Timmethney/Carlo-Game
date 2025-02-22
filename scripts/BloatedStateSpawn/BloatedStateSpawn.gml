function BloatedStateSpawn(){
	var _index = floor(image_index)
	var playerDir = -sign(x - obj_player.x)
	if (sprite_index != spr_bloated_spawn){
		sprite_index = spr_bloated_spawn
		image_index = 0
		Exclamation()
	}
	if (attackTime <= 0 && _index == 4){
		instance_create_layer(x + playerDir * 100, y,"Enemies", obj_bloated_minion)
		attackTime = 60
	}
	if (scr_animation_end()){
		state = BLOATEDSTATE.recuperate
		recuperateTime = 90
	}
}