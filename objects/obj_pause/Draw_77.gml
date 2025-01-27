//Disable aplha blending (we just want the RGB)
gpu_set_blendenable(false)

if (pause){
	surface_set_target(application_surface);
		if (surface_exists(pauseSurf))	draw_surface(pauseSurf,0,0);
		else {
			pauseSurf = surface_create(resW, resH);
			buffer_set_surface(pauseSurfBuffer, pauseSurf,0)
		}
	surface_reset_target();
}

//if (keyboard_check_pressed(vk_escape)|| playerPause){
	if (!pause){
		pause = true	
		
		//deactivate everything other than this instance
		instance_deactivate_all(true)
		
		//Capture this game moment (wont capture draw gui contents though)
		pauseSurf = surface_create(resW,resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface,0,0);
		surface_reset_target();
		
		//Back up this surface to a buffer in case we lose it (screen focus etc)
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf,0);
	}
	else {
		pause = false;
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
	playerPause = false


//Enable alpha blending again
gpu_set_blendenable(true)