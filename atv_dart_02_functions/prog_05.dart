// Crie umafunção em linguagem Dartque receba do usuário2 números e retorne o menor valor.

import 'dart:io';
import 'functions.dart';
main(){
	try {
		stdout.write("Insira um número: ");
		double num1 = double.parse(stdin.readLineSync()!);
		stdout.write("Insira outro número: ");
		double num2 = double.parse(stdin.readLineSync()!);

    	double number = smallNumber(num1, num2);

		print(number);
	} catch (e) {
		print("Valor invalido");
	}
}


