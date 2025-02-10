/// @description Draw Score
scr_shorter_camera()
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_text(cam_w()- 30,cam_h()- 750,"Score: " + string(current_score))