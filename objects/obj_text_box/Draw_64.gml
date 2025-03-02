//Draw dialogue
draw_set_halign(fa_left)
if (instance_exists(obj_text_box)){
	var kNext = keyboard_check_pressed(vk_enter)

	//Handle pages
	if (kNext){
		if (CurrentChar >= string_length(Text[Page])){
			if (Page < array_length(Text)-1){
				Page++
				CurrentChar = 0
				String = "";
			} else{ 
				instance_destroy()	
			}
		} else {
			CurrentChar = string_length(Text[Page])	
		}
	}
	
	//Handle Typewriter effect
	if (instance_exists(obj_text_box)){
		if (CurrentChar < string_length(Text[Page])){
			CurrentChar	 += TextSpd
		}
	}
	
	//Reset string and Add new string +1 Character each update
	if (instance_exists(obj_text_box)){
		if (string_length(String) <  string_length(Text[Page])){
			for(var i = 1; i < CurrentChar+1; i++){
				var Char = string_copy(Text[Page],1,CurrentChar)
				String = string(Char)
			}
		}
	}
	
	//Draw Textbox
	Anim++;
	draw_sprite_stretched(spr_menu, Anim, TBX,TBY,TBoxW, TBoxH)
	
	draw_set_font(f_silver)
	draw_text_ext_transformed(TBX+Border, TBY + Border, String, LinePadding, Width,1.5,1.5,0)
}
draw_set_halign(fa_right)