// Escreva um código que peça 3 números e mostre os números em ordem decrescente

import 'dart:io';
void main() {
	List<int> numbersList = <int>[];
	
	try {
		for (int i = 0; i < 3; i++) {
			stdout.write("${i+1}º número: ");
			int number = int.parse(stdin.readLineSync()!);

			numbersList.add(number);
		}

		numbersList.sort((a, b) => b.compareTo(a));

		print(numbersList);
	} catch (e) {
	  print("O valor inserido não é valido");
	}
}

// by @rom013