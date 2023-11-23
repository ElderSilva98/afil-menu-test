var _hover = get_hover();

//Define o valor normalizado entre 0 e 1 do slider;
amount = (current_value - min_value)/(max_value-min_value);

if (mouse_check_button_pressed(mb_left) && _hover){
    //Verifica se o mouse está sobre a bolinha do slider
    if (point_in_circle(mouse_x, mouse_y, x + width*(current_value-min_value) / (max_value-min_value), y, 10)){
        dragging = true;
    }else{
        //Modifica o slider ao clicar diretamente no ponto desejado
        var new_value = (mouse_x - x)*(max_value - min_value) / width+min_value;
        current_value = clamp(new_value, min_value,max_value);
		
    }
}

if (dragging && mouse_check_button(mb_left)){
    //Arrasta o slider
    var new_value = (mouse_x - x)*(max_value-min_value)/width + min_value;
    current_value = clamp(new_value, min_value, max_value);

}
//Aplica o novo volume quando o mouse soltar o slider
if(device_mouse_check_button_released(0,mb_left)){
	dragging = false;
	script_execute(update_value)
}

//Verifica se está selecionado pelo teclado ou pelo mouse;
if(selected || dragging){
	hover = lerp(hover,1,0.1)
}else{
	hover = lerp(hover,_hover,0.1);
}

//Aumenta ou diminui quando selecionado pelo teclado
get_inputs();
if(selected && right_hold){
	var new_value = current_value+1;
    current_value = clamp(new_value, min_value,max_value);
	script_execute(update_value);
}else if(selected && left_hold){
	var new_value = current_value-1;
    current_value = clamp(new_value, min_value,max_value);
	script_execute(update_value);
}
 
