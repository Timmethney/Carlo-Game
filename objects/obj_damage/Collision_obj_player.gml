var nearSave = instance_nearest(x,y,obj_safe_spot)	
global.playerHealth -= 1

with (obj_player){
	invincibility = 180
}

if (global.playerHealth >= 1){
	other.x = nearSave.x
	other.y = nearSave.y
	instance_create_depth(0,0,-9999, obj_fade)
}
