// Escreva um código que pergunte ao usuário o preço de três produtos e informe ao usuário qual o produto deve comprar, sabendo que a decisão é sempre o mais barato. Utilize a estrutura FOR

import 'dart:io';
void main() {
	List<double> priceList = [];

	try {
		for (int i = 0; i < 3; i++) {
			stdout.write("Preço do ${i+1}º produto: ");
			double number = double.parse(stdin.readLineSync()!);

			priceList.add(number);
		}

		comparePrice(priceList);
	} catch (e) {
		print("O valor inserido não é valido");
	}
}

void comparePrice(priceList) {
	double controlVar = priceList[0];

	for (int i = 0; i < priceList.length; i++) {
		if(priceList[i] < controlVar){
			controlVar = priceList[i];
		}
	}

	print(controlVar);

}

// by @rom013