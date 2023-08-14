import 'dart:io';

void main(List<String> args) {
  print("Digite seu salário bruto: ");
   String entrada = stdin.readLineSync()!;
   double salario = double.parse(entrada);

   double descontoINSS = calcularINSS(salario);
   double impostoIR = calcularIR(salario);
   double salarioLiquido = calcularSalarioLiquido(salario);

   print("Salário bruto: R\$ ${salario}");
   print("O seu desconto do INSS é de: R\$ ${descontoINSS.toStringAsFixed(2)}");
   print("O seu desconto do imposto de renda é de: R\$ ${impostoIR.toStringAsFixed(2)}");
   print("Valor total dos descontos: ${(impostoIR + descontoINSS).toStringAsFixed(2)}");
   print("O seu salário líquido é de: R\$ ${salarioLiquido.toStringAsFixed(2)}");
}

double calcularINSS(double salario) {
  double desconto = 0;

  if (salario <= 1212) {
    desconto = salario * 0.075;
  } else if (salario <= 2427.35) {
    desconto = salario * 0.09;
  } else if (salario <= 3641.03) {
    desconto = salario * 0.12;
  } else {
    desconto = salario * 0.14;
  }

  return desconto;
}

double calcularIR(double salario) {
  double imposto = 0;

  if (salario <= 1903.98) {
    imposto = 0;
  } else if (salario <= 2826.65) {
    imposto = salario * 0.075;
  } else if (salario <= 3751.05) {
    imposto = salario * 0.15;
  } else if (salario <= 4664.68) {
    imposto = salario * 0.22;
  } else {
    imposto = salario * 0.275;
  }

  return imposto;
}

double calcularSalarioLiquido(double salario) {

  double descontoINSS = calcularINSS(salario);
  double impostoIR = calcularIR(salario);

  double salarioLiquido = salario - descontoINSS - impostoIR;

  return salarioLiquido;
}

