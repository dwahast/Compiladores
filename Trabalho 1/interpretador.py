#Douglas Wahast da Costa - 15201350
#Trabalho 1
#Projeto de Compiladores - Andre Dubois
import sys

file = open(sys.argv[1], 'r')

Pilha = []

for line in file:

	if len(line.split(' ')) == 2:
		comand = line.split(' ')[0]
		value = line.split(' ')[1]
		if comand == 'PUSH':
			Pilha.append(int(value))
	else:
		comand = line.split(' ')[0].split('\n')[0]
		if comand == 'SUM':
			resultado = Pilha.pop() + Pilha.pop()
			Pilha.append(resultado)
		elif comand == 'SUB' :
			resultado = Pilha.pop() - Pilha.pop()
			Pilha.append(resultado)
		elif comand == 'DIV' :
			resultado = Pilha.pop() / Pilha.pop()
			Pilha.append(resultado)
		elif comand == 'MULT' :
			resultado = Pilha.pop() * Pilha.pop()
			Pilha.append(resultado)
		elif comand == 'PRINT':
			print(resultado)
			exit()