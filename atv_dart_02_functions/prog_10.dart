import 'dart:io';

main(){

  positivo(num){
    if((num % 2) == 0){
      print("1");
    }
    else{
      print("0");
    }
  }

  print("Digite um número inteiro: ");
  int num = int.parse(stdin.readLineSync()!);

  positivo(num);
  
}