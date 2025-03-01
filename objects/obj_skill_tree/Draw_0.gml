var temp_c1,temp_c2;

temp_c1 = make_color_rgb(193,180,112);
temp_c2 = make_color_rgb(193,180,112);

draw_roundrect_color(x-160,y-40,x+250,y+500,temp_c1,temp_c2,false);

temp_c1 = make_color_rgb(53,49,31);
temp_c2 = make_color_rgb(53,49,31);

draw_roundrect_color(x-160,y-40,x+250,y+500,temp_c1,temp_c2,true);

temp_c1 = make_color_rgb(33,30,19);

draw_set_color(temp_c1);
draw_text(x+18,y-32,"Skill Points : "+string(global.skillPoints));
draw_set_color(c_white);