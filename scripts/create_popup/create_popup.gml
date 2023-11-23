// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_popup(_x,_y,_title,_option1_text,_option1_act,_option2_text,_option2_act){
	
	var _popup = instance_create_layer(_x,_y,"Instances",obj_popup)
	_popup.title = _title
	_popup.option1 = create_button(_x,_y,spr_bt,_option1_text,_option1_act);
	_popup.option2 = create_button(_x+sprite_get_width(spr_bt)+_popup.margin,_y,spr_bt,_option2_text,_option2_act);
	_popup.option1.depth = -200;
	_popup.option2.depth = -200;
	_popup.options = [_popup.option1,_popup.option2];
	
	return _popup;

}