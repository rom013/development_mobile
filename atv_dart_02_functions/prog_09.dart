import 'dart:io';
import 'dart:math';
main() {
	try {
		stdout.write("Nota da primeira nota: ");
		double test1 = double.parse(stdin.readLineSync()!);
		stdout.write("Nota da segunda nota: ");
		double test2 = double.parse(stdin.readLineSync()!);
		stdout.write("Nota da terceira nota: ");
		double test3 = double.parse(stdin.readLineSync()!);

        separeteNumbers(test1, test2, test3);
	} catch (e) {
		print("Valor invalido");
	}
}

separeteNumbers(double a, double b, double c){
    double fisrtHighestGrade, secondHighestGrade;

    double maxNumber = max(a, b);
    maxNumber = max(maxNumber, c);

    double minNumber = min(a, b);
    minNumber = min(minNumber, c);

    if(a > b){
        fisrtHighestGrade = a;
        secondHighestGrade = b;
    }else {
        fisrtHighestGrade = b;
        secondHighestGrade = a;
    }

    if(c > fisrtHighestGrade){
        secondHighestGrade = fisrtHighestGrade;
        fisrtHighestGrade = c; 
    } else if( c > secondHighestGrade ){
        secondHighestGrade = c;
    }
    
    double averageTestAll = calcTestestAverage(a, b, 3, c: c);
    double averageTestTwo = calcTestestAverage(fisrtHighestGrade, secondHighestGrade, 2);

    print("Média total: $averageTestAll, \n Média das maiores notas: $averageTestTwo \n Mior nota: $maxNumber, \n Menor nota: $minNumber");
}

double calcTestestAverage(double a, double b, int count, {double c = 0}){
    return (a + b + c) / count;
}