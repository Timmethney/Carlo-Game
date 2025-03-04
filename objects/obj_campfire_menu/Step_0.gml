var mouseOver = false

if (point_in_rectangle(mouse_x, mouse_y, x, y, x +width, y +height)){
		mouseOver = true;
		if (mxPrev != mouse_x) || (myPrev != mouse_y){
			var _mouseHoverLine = (mouse_y - y) div heightLine;
			if !(description == -1) _mouseHoverLine -= 1;
			if (_mouseHoverLine < 0) _mouseHoverLine = 0
			if (_mouseHoverLine > optionsCount - 1) _mouseHoverLine = optionsCount - 1
			hover = _mouseHoverLine;
		}
}

if (hover > optionsCount - 1) hover = 0
if (hover < 0) hover = optionsCount - 1

if (mouse_check_button_pressed(mb_left) && mouseOver){
	if (array_length(options[hover]) == 2){
		var _func = options[hover][1];
		if (_func != -1) _func();
	}
	if (mouse_check_button_pressed(mb_left)){
		//Change options goto
		var _mouseHoverLine = (mouse_y - y) div heightLine;
		if (_mouseHoverLine == 0) room_goto(room_skill_tree)
		if (_mouseHoverLine == 4) game_end()
	}

}

mxPrev = mouse_x
myPrev = mouse_y
