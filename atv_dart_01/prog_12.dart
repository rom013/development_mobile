import 'dart:io';

main() {
  print("Digite o valor atual do seu salário: ");
  double valorAtual = double.parse(stdin.readLineSync()!);

  if(valorAtual <= 2800){
    var vezes = valorAtual * 20;
    var divisao = vezes / 100;
    var soma = divisao + valorAtual;

    print("Seu salário antigo era de $valorAtual reais. \n O porcentual de aumento é de 20%. \n O valor de aumento será de $divisao reais. \n Seu novo salário será de $soma reais.");
  }
  else if(valorAtual >= 2801 && valorAtual <=  3000){
    var vezes = valorAtual * 15;
    var divisao = vezes / 100;
    var soma = divisao + valorAtual;
    print("Seu salário antigo era de $valorAtual reais. \n O porcentual de aumento é de 15%. \n O valor de aumento será de $divisao reais. \n Seu novo salário será de $soma reais.");
  }
  else if(valorAtual >= 3001 && valorAtual <= 4000){
    var vezes = valorAtual * 10;
    var divisao = vezes / 100;
    var soma = divisao + valorAtual;
    print("Seu salário antigo era de $valorAtual reais. \n O porcentual de aumento é de 10%. \n O valor de aumento será de $divisao reais. \n Seu novo salário será de $soma reais.");
  }
  else if(valorAtual > 4000){
    var vezes = valorAtual * 5;
    var divisao = vezes / 100;
    var soma = divisao + valorAtual;
    print("Seu salário antigo era de $valorAtual reais. \n O porcentual de aumento é de 52%. \n O valor de aumento será de $divisao reais. \n Seu novo salário será de $soma reais.");

  }
}