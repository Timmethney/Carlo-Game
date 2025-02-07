function ScreenPause(){
//Screen pause
	if (instance_exists(obj_screen_pause)){
		image_speed = 0
		return true
	} else {
		image_speed = 1
		return false
	}
}