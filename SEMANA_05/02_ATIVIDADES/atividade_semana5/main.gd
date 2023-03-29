#Exercício da semana 5
extends Node2D

#variável "teste" e "valor" retiradas pois não eram usadas
#variável declara de maneira errada ("número" estava com acento)
var numero = 0
var lista = []

#variável nome não foi declarada
var nome := ""

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	#variável número chamada de maneira errada
	
	#foi feito um split guardar apenas o nome
	nome = $LineEdit.text.split(" ")[0]
	
	#O node "LineEdit" não foi chamado de maneira correta
	numero = int($LineEdit.text.split(" ")[1])
	
	#atribuição foi feita de maneira errada
	$Label.text = nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		#variável número chamada de maneira errada
		numero += i
		lista.append(numero)
	
	#o número está declarado como um inteiro, então, deve ser convertido para string
	$Label.text = str(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#variável cont não foi declarada de maneira correta
	var cont = 0
	
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for num in lista:
		if num % 2 == 1:
			cont += 1
	
	if cont != 0:
			nome += "baldo"
	
	# Define o texto do rótulo com o nome
	$Label.text = nome
