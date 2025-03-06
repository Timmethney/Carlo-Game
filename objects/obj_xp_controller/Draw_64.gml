scr_shorter_camera()
if (room != room_credits){
if (Player_XP > var_Player_Level_Array[Var_player_Level])
{
instance_create_layer(x,y,0,obj_xp_controller_lvlup_text);
	
Player_XP -= var_Player_Level_Array[Var_player_Level];

Var_player_Level ++;
global.skillPoints++
Var_player_xp_point ++;
}

draw_rectangle(20,1100,20 +(300*(Player_XP/var_Player_Level_Array[Var_player_Level])),1125,false);
draw_rectangle_color(20,1100,320,1125,c_black,c_black,c_black,c_black,true);

draw_text(80,1080,"Level "+string(Var_player_Level))
}