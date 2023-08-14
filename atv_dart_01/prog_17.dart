// Faça um código que peça ao usuário entrar com três valores e após calcule a equação do segundo grau: ax2 + bx + c. Levando em consideração que nenhum dos valores de entrada pode ser igual a zero

import 'dart:io';
import 'dart:math';

void main() {
	double a = 1;
	double b = 1;
	double c = 1;	

	try {
		stdout.write("valor de a: ");
		a = double.parse(stdin.readLineSync()!);
		stdout.write("valor de b: ");
		b = double.parse(stdin.readLineSync()!);
		stdout.write("valor de c: ");
		c = double.parse(stdin.readLineSync()!);

		if(a == 0 || b == 0 || c == 0){
			print("Os valores devem ser maiores que 0");
			return;
		}

		calc(a, b, c);

	} catch (e) {
		print("O valor inserido não é valido");
	}
}

calc(a, b, c) {
	final delta = (b*b) - 4 * a * c;
	final deltaSqrt = sqrt(delta);

	final xI = (-(b) + deltaSqrt) / (2*a);
	final xII = (-(b) - deltaSqrt) / (2*a);

	print("xI = ${xI}   xII = ${xII}");
}

// by @rom013