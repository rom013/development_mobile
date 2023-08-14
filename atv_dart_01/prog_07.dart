/*
    Escreva um código que peça as duas notas de um aluno. Se a média calculada na nota for maior e igual a 7, mostre a mensagem "Aluno aprovado". Se a média for menor que 7, mostre a mensagem "Aluno reprovado". Se a média for igual a 10, mostre a mensagem "Aluno excelente -Aprovado"
*/

import 'dart:io';

void main() {
    List<double> grade =  []; // lista q aceita valores double

    try {
        for (var i = 0; i < 2; i++) {
            stdout.write("${i+1}ª nota: ");
            double gradeGet = double.parse(stdin.readLineSync()!);

            grade.add(gradeGet);
        }

        executeCalcAvarage(grade);
        
    } catch (e) {
      
    }
}

executeCalcAvarage(grade) {
    double sumNumbers = 0;
    int count = 0;
    List<double> listGrade = grade;

    for (int i = 0; i < listGrade.length; i++) {
        sumNumbers += listGrade[i];
        count++;
    }

    print(sumNumbers / count);  
}

// by @rom013