import 'dart:io';

main() {
  print("Digite um número: ");
  var numero = stdin.readLineSync()!;

  if(int.parse(numero) <= 0){
    print("Digite um número positivo.");

  }else{
    for(int i = 1; i <= 10; i++){
          int resultado = int.parse(numero) * i;
    print("$numero x $i = $resultado");
    }
  }

} 