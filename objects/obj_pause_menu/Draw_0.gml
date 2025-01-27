scr_shorter_camera()

//draw a black rectangle over the screen
draw_set_alpha(alpha);
draw_rectangle_color(cam_x(),cam_y(),cam_x() + cam_w(), cam_y() + cam_h(), c_black, c_black, c_black, c_black, false)


//draw the text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(1)
draw_set_font(f_silver);

var _offset = -32
draw_text_transformed(cam_x() + cam_w()/2, cam_y() + cam_h()/2 + _offset, "Paused",3,3,0)

var _offset2 = 80

draw_text_transformed(cam_x() + cam_w()/2, cam_y() + cam_h()/2 + _offset2, "Press ESC to exit",1,1,0)

//reset draw settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
