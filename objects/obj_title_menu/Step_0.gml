mouseOver = false;

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

hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

// Store the old hover value again
var oldHover = hover;

if (hover > optionsCount - 1) hover = 0;
if (hover < 0) hover = optionsCount - 1;

// Play hover sound if hover changes due to keyboard input
if (hover != oldHover) {
    audio_play_sound(snd_hover, 1, false);
}

if ((mouse_check_button_pressed(mb_left) && mouseOver) || keyboard_check_pressed(vk_enter)) {
    if (array_length(options[hover]) == 2) {
        var _func = options[hover][1];
        if (_func != -1) _func();
    }

    if (mouse_check_button_pressed(mb_left)) {
        // Change options goto
        var _mouseHoverLine = (mouse_y - y) div heightLine;

        if (_mouseHoverLine == 0) {
            room_goto(room_town);
            audio_play_sound(snd_select, 0, false);
        }
        if (_mouseHoverLine == 1) {
            instance_destroy();
            instance_create_layer(x, y, 0, obj_credits);
            instance_create_layer(x - 240, y - 200, 0, obj_goback);
            audio_play_sound(snd_select, 0, false);
        }
        if (_mouseHoverLine == 2) {
            audio_play_sound(snd_select, 0, false);
            game_end();
        }
		if (_mouseHoverLine == 3){
			audio_play_sound(snd_select, 0, false)
			room = room_boss_forest
		}
    }
}

mxPrev = mouse_x;
myPrev = mouse_y;
