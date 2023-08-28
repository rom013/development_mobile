import 'dart:io';

main(){

  resposta(num1, num2){

    if(num1 > num2){
    print("$num1 é maior.");
    }
    else{
      print("$num2 é maior.");
    }
  }

  print("Digite um número: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Digite outro número: ");
  double num2 = double.parse(stdin.readLineSync()!);

  resposta(num1, num2);
  
}
