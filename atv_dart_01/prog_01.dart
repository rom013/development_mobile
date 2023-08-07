import 'dart:io';

main() {
  stdout.write("Primeiro número: ");
  String firstNumber = stdin.readLineSync()!;

  stdout.write("Segundo número: ");
  String secondNumber = stdin.readLineSync()!;

  int firstNumberInt = int.parse(firstNumber);
  int secontNumberInt = int.parse(secondNumber);

  verify(firstNumberInt, secontNumberInt);
}

void verify(int a, int b) {
  if(a < 0 || b < 0){
    print("Escolha um número maior que 0");
  }
  else if(a > b){
    print("${a} é o maior número");
  }
  else{
    print("${b} é o maior número");
  }
}