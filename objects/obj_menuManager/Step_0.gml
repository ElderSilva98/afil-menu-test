// Obtem os inputs do teclado
get_inputs();

if(!instance_exists(obj_popup)){
	// Verifica se os elmentos ja foram colocados na cena
	if(!instance_exists(obj_bt)){
		event_user(0)
		selection = 0;
	}

	// Seleciona os elementos utilizando o teclado
	if(array_length(menu.list) > 0){
		if(up){
			menu.list[selection].selected = false;
			selection--;
		}else if(down){
			menu.list[selection].selected = false;
			selection++;
		}
	}

	// Limita a seleção pelo range do array
	if(selection >= array_length(menu.list)){
		selection = 0;
	}else if(selection < 0){
		selection = array_length(menu.list)-1
	}

	// Diz para o elemento da UI que ele está sendo selecionado
	if (selection >= 0 && selection < array_length(menu.list)) {
	    menu.list[selection].selected = true;
	}

}else{
	
	// Seleciona as opçoes do Pop up
	if(array_length(obj_popup.options) > 0){
		if(left){
			obj_popup.options[selection].selected = false;
			selection--;
		}else if(right){
			obj_popup.options[selection].selected = false;
			selection++;
		}
	}

	// Limita a seleção pelo range do array
	if(selection >= array_length(obj_popup.options)){
		selection = 0;
	}else if(selection < 0){
		selection = array_length(obj_popup.options)-1
	}

	// Diz para o botão do popup que ele está sendo selecionado
	if (selection >= 0 && selection < array_length(obj_popup.options)) {
	    obj_popup.options[selection].selected = true;
	}

}