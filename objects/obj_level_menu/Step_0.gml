var mouseOver = false;

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height)) {
    mouseOver = true;

    // Store the old hover value
    var oldHover = hover;

    if ((mxPrev != mouse_x) || (myPrev != mouse_y)) {
        var _mouseHoverLine = (mouse_y - y) div heightLine;
        if (!(description == -1)) _mouseHoverLine -= 1;
        if (_mouseHoverLine < 0) _mouseHoverLine = 0;
        if (_mouseHoverLine > optionsCount - 1) _mouseHoverLine = optionsCount - 1;
        hover = _mouseHoverLine;
    }

    // Play hover sound if hover changes
    if (hover != oldHover) {
        audio_play_sound(snd_hover, 1, false);
    }
}

// Store the old hover value again
var oldHover = hover;

if (hover > optionsCount - 1) hover = 0;
if (hover < 0) hover = optionsCount - 1;

// Play hover sound if hover changes due to keyboard input
if (hover != oldHover) {
    audio_play_sound(snd_hover, 1, false);
}

if (mouse_check_button_pressed(mb_left) && mouseOver) {
    if (array_length(options[hover]) == 2) {
        var _func = options[hover][1];
        if (_func != -1) _func();
    }

    if (mouse_check_button_pressed(mb_left)) {
        // Change options goto
        var _mouseHoverLine = (mouse_y - y) div heightLine;

        if (_mouseHoverLine == 0) {
			room = room_forest
			obj_player.x = 414
			obj_player.y = 480
			instance_destroy()
        }
		if (_mouseHoverLine == 1){
			room = room_forest
			obj_player.x = 7441
			obj_player.y = 480
			instance_destroy()
		}
		if (_mouseHoverLine == 2){
			room = room_corrupted_forest
			obj_player.x = 418
			obj_player.y = 900
			instance_destroy()
		}
		if (_mouseHoverLine == 3){
			room = room_corrupted_forest
			obj_player.x = 8672
			obj_player.y = 750
			instance_destroy()
		}
		if (_mouseHoverLine == 4){
			room = room_cave
			obj_player.x = 414
			obj_player.y = 1438
			instance_destroy()
		}
		if (_mouseHoverLine == 5){
			room = room_cave
			obj_player.x = 3550
			obj_player.y = 350
			instance_destroy()
		}
    }
}

mxPrev = mouse_x;
myPrev = mouse_y;
