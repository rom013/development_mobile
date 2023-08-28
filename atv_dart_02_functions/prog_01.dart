// Crie uma função que receba do usuário um valor e informe se ele é positivo ou não.

import 'dart:io';
main(){
	try {
		stdout.write("Insira um valor: ");
		double number = double.parse(stdin.readLineSync()!);

		handleValue(number);
	} catch (e) {
		print("Valor invalido");
	}
}

handleValue(number){
	if(number < 0){
		print("Negativo");
	}
	else if(number >= 1){
		print("Positivo");
	}
	else{
		print("Neutro");
	}
}

// by Rom013