/// @description Draw Score
scr_shorter_camera()
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_text_transformed(cam_w(),cam_h(),"Score: " + string(current_score),2,2,0)