// Usando o item 2 acima, crie um códigoque calcula as raízes de uma equação do 2o grau: ax² + bx + c=0. Para ela existir, o coeficiente 'a' deve ser diferente de zero. Caso o delta seja maior ou igual a zero, as raízes serão reais. Caso o delta seja negativo, não são reais

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
  if(delta >= 0){
    print("Raiz real");
  }
  else{
    print("Não real");
    return;
  }

	final deltaSqrt = sqrt(delta);

	final xI = (-(b) + deltaSqrt) / (2*a);
	final xII = (-(b) - deltaSqrt) / (2*a);

	print("xI = ${xI}   xII = ${xII}");
}


// by Rom013