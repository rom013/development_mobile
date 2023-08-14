// Escreva um código que peça 3 números e mostre os números em ordem decrescente

import 'dart:io';
void main() {
	List<int> numbersList = [];
	
	try {
		for (int i = 0; i < 3; i++) {
			stdout.write("${i+1}º número: ");
			int number = int.parse(stdin.readLineSync()!);

			numbersList.add(number);
		}

		orderNumberList(numbersList);
	} catch (e) {
	  print("O valor inserido não é valido");
	}
}

orderNumberList(numbersList) {
	List<int> newList = [];

	for (int i = 0; i < numbersList.length; i++) {
		
	}

}

// by @rom013