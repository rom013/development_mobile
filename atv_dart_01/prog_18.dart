import 'dart:io';

main() {
  List<int> numeros = [];

  for(double i =1; i <= 10; i++){
    print("Digite um número inteiro: ");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);

    if(num%2 == 0){
      print("Esse número é par.");
    }
    else{
      print("Esse número é impar: ");
    }
  }
}