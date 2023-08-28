import 'dart:io';

main(){

  resposta(num1, num2, num3){
    if(num1 < num2 && num1 < num3){
    print("O primeiro número é menor");
    }
    else if(num2 < num1 && num2 < num3){
      print("O segundo número é menor");
    }
    else{
      print("O terceiro número é menor");
    }
  }

  print("Digite o primeiro número: ");
  double num1 = double.parse(stdin.readLineSync()!);
  
  print("Digite o segundo número: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro número: ");
  double num3 = double.parse(stdin.readLineSync()!);

  resposta(num1, num2, num3);
  
}