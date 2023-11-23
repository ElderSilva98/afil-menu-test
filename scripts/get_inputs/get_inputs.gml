// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function get_inputs(){
	
	up = keyboard_check_pressed(vk_up)
	down = keyboard_check_pressed(vk_down)
	right_hold = keyboard_check(vk_right)
	left_hold = keyboard_check(vk_left)
	right = keyboard_check_pressed(vk_right)
	left = keyboard_check_pressed(vk_left)
	confirm = keyboard_check_pressed(vk_enter)

}