lastPositionx = obj_player.x
lastPositiony = obj_player.y
state = WEBSTATE.shoot

dir =  point_direction(obj_arachnid.x, obj_arachnid.y,lastPositionx,lastPositiony)
movesp = 20

enum WEBSTATE{
	shoot,
	rain
}
