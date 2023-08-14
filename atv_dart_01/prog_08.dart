import 'dart:io';

main() {
  List<int> numeroDigitado = [];

  for(int i = 1; i <= 3; i++){
    print("Digite o $i° número: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeroDigitado.add(numero);
  }

  int maiorNumero = numeroDigitado.reduce((a, b) => a > b ? a : b); //o reduce serve para decobrir tanto o maior número quanto o menor número digitado.
  int menorNumero = numeroDigitado.reduce((a, b) => a < b ? a : b);
  print("O maior número é $maiorNumero. \n O menor número é $menorNumero");
}