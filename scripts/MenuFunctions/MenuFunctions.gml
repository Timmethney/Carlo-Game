function Menu(_x, _y, _options, _description = -1){
	with (instance_create_depth(_x, _y, -999, obj_title_menu)){
	options = _options;
	description = _description;
	optionsCount = array_length(_options)
	hovermarker = "* "
	
	//Set up size
	margin = 18
	draw_set_font(f_silver);
	
	width = 1;
	if (_description != -1) width = max(width, string_width(_description));
	for (var i = 0; i < optionsCount; i++){
		width = max(width, string_width(_options[i][0]));
	}
	width += string_width(hovermarker);
	
	heightLine = 20
	height = heightLine * (optionsCount + !(description == -1))
	
	widthFull = width + margin * 2
	heightFull = height + margin * 2
	}
}

function Menu_Credits(_x, _y, _options, _description = -1){
	with (instance_create_depth(_x, _y, -999, obj_title_menu)){
	options = _options;
	description = _description;
	optionsCount = array_length(_options)
	hovermarker = "* "
	
	//Set up size
	margin = 18
	draw_set_font(f_silver);
	
	width = 1;
	if (_description != -1) width = max(width, string_width(_description));
	for (var i = 0; i < optionsCount; i++){
		width = max(width, string_width(_options[i][0]));
	}
	width += string_width(hovermarker);
	
	heightLine = 20
	height = heightLine * (optionsCount + !(description == -1))
	
	widthFull = width + margin * 2
	heightFull = height + margin * 2
	}
}