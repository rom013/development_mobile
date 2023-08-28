import 'dart:io';

main(){

  calculo(a, b, c){

    double delta = (b * b) - (4 * a * c);

    print("$b² - 4.a.c = $delta");

  }

  print("Digite o valor de a: ");
  double a = double.parse(stdin.readLineSync()!);
    
  print("Digite o valor de b: ");
  double b = double.parse(stdin.readLineSync()!);

  print("Digite o valor de c: ");
  double c = double.parse(stdin.readLineSync()!);

  calculo(a, b, c);
}

