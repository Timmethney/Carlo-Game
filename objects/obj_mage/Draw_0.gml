draw_self();

if (flash > 0 && state != MAGESTATE.death){
	flash -= 1
	shader_set(sh_flash);
	draw_self();
	shader_reset();
}
if (flash > 0 && lastFlash == true){
	lastFlash = false
	flash -= 1
	shader_set(sh_flash);
	draw_self();
	shader_reset();
}