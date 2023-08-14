import 'dart:io';

main() {

  List<String> nomeAlunos = [];
  List<double> notaAlunos = [];

  double somaNotas = 0;


  for(int i = 1; i <= 3; i++){

    print("Digite o nome do aluno $i: ");
    var nome = stdin.readLineSync()!;
    nomeAlunos.add(nome);

    print("Digite a nota do aluno $i: ");
    double nota = double.parse(stdin.readLineSync()!);
    notaAlunos.add(nota);

    somaNotas += nota;
  }

    double media = somaNotas / notaAlunos.length;

    print("A média das notas é: $media");
}