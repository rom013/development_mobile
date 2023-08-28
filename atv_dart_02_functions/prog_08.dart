import 'dart:io';
 
void main() {

  resultado(grau){
    
    switch (grau) {
      case 'C':
        print("Digite os graus em Celsius: ");
        double celsius = double.parse(stdin.readLineSync()!);
        
        double contaF = 9 * (celsius / 5) + 32;

        print(contaF);
  
  
      case 'F':
        print("Digite os graus em Farenheit: ");
        double farenheit = double.parse(stdin.readLineSync()!);

        double contaC = 5 * (farenheit - 32) / 9;

        print(contaC);

      default:
        print("Escolha entre C ou F");
    }
  }

  stdout.write('Escolha: \n C(Celsius) para converter para farenheit \n F(farenheit) para converter para Celsisus: ');
  var grau = stdin.readLineSync()!;
 
  resultado(grau);
}