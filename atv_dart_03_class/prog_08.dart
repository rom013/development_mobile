import 'dart:io';

class Usuario {
  late List<String> listaAmigos = [];
  late int idade;
  late String nome;

  Usuario(this.idade, this.nome);
  //Usuario(this.listaAmigos, this.idade, this.nome);

  void Adicionar(String AddAmigos) {
    listaAmigos.add(AddAmigos);
    print("$AddAmigos adicionado com sucesso.");
  }

  void Remover(String remover) {
    if (listaAmigos.contains(remover)) {
      listaAmigos.remove(remover);
      print("$remover removido com seucesso.");
    } else {
      print("$nome não tem $remover na lista de amigos.");
    }
  }

  List<String> exibirLista() {
    return listaAmigos;
  }
}

void main() {
  Usuario amigos = Usuario(18, 'Clara');
  print("Lista de amigos: ${amigos.exibirLista()}");

  print("Qual amigo você deseja adicionar? ");
  String Adicionar = stdin.readLineSync()!;
  amigos.Adicionar(Adicionar);
  print("Lista de amigos: ${amigos.exibirLista()}");

  print("Quem você deseja remover da lista de amigos? ");
  String Remover = stdin.readLineSync()!;
  amigos.Remover(Remover);
  print("Lista de amigos: ${amigos.exibirLista()}");

}
