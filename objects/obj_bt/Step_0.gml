var _hover = get_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

//Verifica se o mouse ou o teclado está selecionando o botão
if(selected){
	hover = lerp(hover,1,0.1)
}else{
	hover = lerp(hover,_hover,0.1);
}

//Click
if(_click && action > 0){
	script_execute(action);
}

//Enter
if(play && action > 0){
	script_execute(action);
	play = false;
}

