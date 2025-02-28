function scr_enemyXP(){
	instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_xp_sphere_text)
	obj_xp_sphere_text.xp = xp
	obj_xp_controller.Player_XP += xp
}