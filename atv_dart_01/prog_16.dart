import 'dart:io';

main() {
  print("Digte o 1° lado do triângulo: ");
  double lado1 = double.parse(stdin.readLineSync()!);

  print("Digte o 2° lado do triângulo: ");
  double lado2 = double.parse(stdin.readLineSync()!);

  print("Digte o 3° lado do triângulo: ");
  double lado3 = double.parse(stdin.readLineSync()!);

  if(lado1 == lado2 && lado2 == lado3){
    print("Esse triângulo é equilátero.");
  }
  else if(lado1 == lado2 && lado1 != lado3 || lado1 == lado3 && lado1 != lado2){
    print("Esse triângulo é isóceles.");
  }
  else if(lado1 != lado2 && lado1 != lado3){
    print("Esse triângulo é escaleno.");
  }
}