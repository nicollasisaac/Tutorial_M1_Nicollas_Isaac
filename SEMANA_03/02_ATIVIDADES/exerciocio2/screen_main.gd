extends Node2D

var lista = []

func _on_btn_lista_vazia_pressed():
	$exibir_text.text = ""
	var text_usuario = $text_usuario.text
	var itemsLista = text_usuario.split(" ")
	
	for item in itemsLista:
		lista.append(item)
	
	$exibir_text.text = ""
	for dado in lista:
		$exibir_text.text += (dado + "\n")
		
	$text_usuario.text = ""
	print(lista)

func _on_btn_lista_preenchida_pressed():
	$exibir_text.text = ""

	var listaAutomatica = "Arroz Feijão Batata Limão Salsa Queijo"
	var itemsLista = listaAutomatica.split(" ")

	for item in itemsLista:
		lista.append(item)

	for dado in lista:
		$exibir_text.text += (dado + "\n")

	print(lista)

func _on_btn_apagar_lista_pressed():
	lista = []
	$exibir_text.text = ("Lista apagada!")
	print(lista)

func _on_btn_colocarText_pressed():
	retornarTextoNaTela($text_usuario.text)

func retornarTextoNaTela(texto):
	$exibir_text.text = texto
	$text_usuario.text = ""
