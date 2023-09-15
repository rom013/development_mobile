import 'dart:io';

class Calculator{
  double firstNumber = 0;
  double secondNumber = 0;

  Calculator(this.firstNumber, this.secondNumber);

  calculate(int operator){
    if(operator == 1){
      return firstNumber + secondNumber;
    }
    else if(operator == 2){
      return firstNumber - secondNumber;
    }
    else if(operator == 3){
      return firstNumber * secondNumber;
    }
    else if(operator == 4){
      if(secondNumber == 0){
        print("Não é possível fazer divisão por zero");
        return;
      }
      return firstNumber / secondNumber;
    }
  }
}


main(){
  try {
    stdout.write("Primeiro número: ");
    double firstNumber = double.parse(stdin.readLineSync()!);
    stdout.write("Segundo número: ");
    double secondNumber = double.parse(stdin.readLineSync()!);
    print("Operador matemático: \n soma: 1 \n subtração: 2 \n multiplicação: 3 \n divisão: 4");
    int operatorValue = int.parse(stdin.readLineSync()!);


    Calculator calculate = Calculator(firstNumber, secondNumber);
    print(calculate.calculate(operatorValue));
    
  } catch (e) {
    print("o valor inserido é invalido");
  }
}