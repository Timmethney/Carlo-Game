degradeTime--
if (degradeTime <= 0){
	image_alpha -= .05
}	
if (image_alpha <=0) instance_destroy()