// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function get_hover(){
	
	var _mx = device_mouse_x_to_gui(0)
	var _my = device_mouse_y_to_gui(0)
	
	return(point_in_rectangle(_mx,_my,x,y,x+width,y+height));

}