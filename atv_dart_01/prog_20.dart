import 'dart:io';

main() {
  List<int> numeros = [];
  int soma = 0;
  double media = 0;

  for(int i = 1; i <= 5; i++){
    print("Digite o $i° número");
    int num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
    soma += num;
    media = soma / 5;
  }

  int maiorNumero = numeros.reduce((a, b) => a > b ? a : b);
  int menorNumero = numeros.reduce((a, b) => a < b ? a : b);
  print("O maior número é: $maiorNumero \n O menor número é: $menorNumero \n A soma de todos os números digitado é: $soma \n A media dos números digitados é: $media");
}