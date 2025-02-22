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
//Danger exclamation
function Exclamation(){
	audio_play_sound(snd_exclamation,100,false,0.5)
	instance_create_layer(x,y-100,"Instances",obj_exclamation)
}