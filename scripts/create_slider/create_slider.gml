// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_slider(_title,_x,_y,_update_value) constructor{
	
	var _slider = instance_create_depth(_x,_y,-100,obj_slider)
	_slider.title = _title
	_slider.x = _x
	_slider.y = _y
	_slider.update_value = _update_value
	return _slider
}