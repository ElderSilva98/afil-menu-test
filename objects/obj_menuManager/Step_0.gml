// Obtem os inputs do teclado
get_inputs();

// Verifica se os elmentos ja foram colocados na cena
if(!instance_exists(obj_bt)){
	event_user(0)
	selection = 0;
}

// Seleciona os elementos utilizando o teclado
if(array_length(menu) > 0){
	if(up){
		menu[selection].selected = false;
		selection--;
	}else if(down){
		menu[selection].selected = false;
		selection++;
	}
}

// Limita a seleção pelo range do array
if(selection >= array_length(menu)){
	selection = 0;
}else if(selection < 0){
	selection = array_length(menu)-1
}

// Diz para o elemento da UI que ele está sendo selecionado
if (selection >= 0 && selection < array_length(menu)) {
    menu[selection].selected = true;
}

