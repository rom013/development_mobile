import 'dart:io';

main() {
  print("Digite uma letra: ");
  String letra = stdin.readLineSync()!;

  if(letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u" || letra == "A" || letra == "E" || letra == "I" || letra == "O" || letra == "U"){
    print("Essa letra é uma vogal.");
  }
  else{
    print("Essa letra é uma consoante.");
  }
}