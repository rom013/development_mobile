import 'dart:io';

main() {
  print("Digite um número de 1 a 7: ");
  int num = int.parse(stdin.readLineSync()!);

  if(num <= 0 || num > 7){
    print("Valor inválido!!");
  }
  else if(num == 1){
    print("Domingo.");
  }
  else if(num == 2){
    print("Segunda-feira.");
  }
  else if(num == 3){
    print("Terça-feira.");
  }
  else if(num == 4){
    print("Quarta-feira.");
  }
  else if(num == 5){
    print("Quinta-feira.");
  }
  else if(num == 6){
    print("Sexta-feira.");
  }
  else if(num == 7){
    print("Sábado.");
  }
}