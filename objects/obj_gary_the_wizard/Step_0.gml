var playerDir = -sign(x-obj_player.x)
if (room == room_tutorial){
	cave = true	
} else {
	cave = false	
}

if (cave == true){
	image_xscale = playerDir *2
} else{
	image_xscale = 3
	image_yscale = 3
}