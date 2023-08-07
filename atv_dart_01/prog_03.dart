import 'dart:io';

main() {
  stdout.write("Altura: ");
  var height = stdin.readLineSync()!;
  stdout.write("Peso: ");
  var weight = stdin.readLineSync()!;

  double resultCalc = calcIMC(height, weight);
  printResultCalcIMC(resultCalc);
}

double calcIMC(h, w){
  double convertHeight = double.parse(h);
  double convertWeight = double.parse(w);

  return convertWeight / (convertHeight * convertHeight);
}

printResultCalcIMC(result){
  if(result <  18.5){
    print("magreza");
  }
  else if(result >= 18.5 && result <= 24.9){
    print("Normal");
  }
  else if(result >= 25 && result <= 29.9){
    print("Sobrepeso");
  }
  else if(result >= 30 && result <= 34.9){
    print("Obesidade I");
  }
  else if(result >= 35 && result <= 39.9){
    print("Obesidade II");
  }
  else{
    print("Obesidade III");
  }
}