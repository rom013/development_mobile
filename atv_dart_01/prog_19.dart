// Faça um programa que entre com Nnúmeros até que o usuário digite o número zero para sair(use a estrutura While). A cada número digitado, informa se o número é par ou ímpar e se é positivo ou negativo

import 'dart:io';

void main() {
	int state = 1;
	String oddOrEven;
	String positveOrNegative;


	try {
		while (state != 0) {
			stdout.write("Insira um número: ");
			int number = int.parse(stdin.readLineSync()!);

			if ((number % 2) == 0) {
				oddOrEven = "Par";
			} else {
				oddOrEven = "Impar";
			}

			if(number < 0){
				positveOrNegative = "Negativo";
			}
			else if(number > 0){
				positveOrNegative = "Positivo";
			}
			else {
				positveOrNegative = "0";
			}

			print("${number} -> ${oddOrEven} e ${positveOrNegative}");

			stdout.write("Deseja continuar. sim (1) não (0): ");
			int input = int.parse(stdin.readLineSync()!);

			if(input == 1 || input == 0){
				state = input;
			}
			else {
				print("valor invalido");
				return;
			}
		}

		print("Fim do programa");

	} catch (e) {
		print("O valor inserido não é valido");
	}
}

// by @rom013
