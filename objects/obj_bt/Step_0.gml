var _hover = get_hover();
var _confirm = obj_inputManager.confirm
var _click = obj_inputManager.click

if(active){
	//Verifica se o mouse ou o teclado está selecionando o botão
	if(selected){
		hover = lerp(hover,1,0.1)
	}else{
		hover = lerp(hover,_hover,0.1);
	}

	// Executa a ação se: O botão está selecionado, o botão de confirmação foi pressionado e existe um script de ação.
	if(selected && _confirm && action > 0){
		script_execute(action);
	}
	
	if(_click && _hover){
		script_execute(action)
	}
}

