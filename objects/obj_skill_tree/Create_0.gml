instance_create_depth(x,y,depth,obj_atk1);
instance_create_depth(x,y+90,depth,obj_atk2);
instance_create_depth(x,y+180,depth,obj_atk3);
instance_create_depth(x,y+270,depth,obj_atk4);
instance_create_depth(x,y+360,depth,obj_atk5);

instance_create_depth(x+90,y,depth,obj_hp1);
instance_create_depth(x+90,y+90,depth,obj_hp2);
instance_create_depth(x+90,y+180,depth,obj_hp3);

depth ++;

global.skillPoints = 6;

global.skillHealth = 0;
global.skillAtk = 0
