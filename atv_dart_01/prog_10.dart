import 'dart:io';

main() {
  print("Digite um número: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Digite outro número: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Qual operação você deseja usar?: ");
  String operacao = stdin.readLineSync()!;

  if(operacao != "+" && operacao != "-" && operacao != "/" && operacao != "*"){
    print("Escolha entre: * ou - ou + ou /");
  }
  else if(operacao == "+"){
    double soma = num1 + num2;
    print("Resultado: $soma");
  }
  else if(operacao == "-"){
    double subtracao = num1 - num2;
    print("Resultado: $subtracao");
  }
  else if(operacao == "/"){
    double dividir = num1 / num2;
    print("Resultado: $dividir");
  }
  else if(operacao == "*"){
    double vezes = num1 * num2;
    print("Resultado: $vezes");
  }
}