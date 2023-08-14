// Escreva um código que peça um número e verifique se o número é positivo ou negativo

import 'dart:io';

main(){
	try {
		stdout.write("Insira um número: ");
		int number = int.parse(stdin.readLineSync()!);

		if((number % 2) == 0){
			print("Par");
		}
		else {
			print("Impar");
		}
	} catch (e) {
		print("O valor inserido não é um número valido");
	}
}

// by @rom013