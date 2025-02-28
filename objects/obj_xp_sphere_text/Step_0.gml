y -= 2

if (var_time_to_live > 0){
	var_time_to_live--
}
else {
	instance_destroy()	
}
