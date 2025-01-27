if ScreenPause(){exit;}

switch (state){
	case WEBSTATE.shoot:
	x += lengthdir_x(movesp, dir)
	y += lengthdir_y(movesp, dir)
	image_angle = 0
	break;
	case WEBSTATE.rain:
	y += 9
	image_angle = 110
	if (obj_arachnid.state1 != PHASE1.rain){
		instance_destroy()	
	}
	break;
}
if (place_meeting(x,y-50,obj_block)){
	instance_destroy()	
}