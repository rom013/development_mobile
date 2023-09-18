import "dart:io";

class Produto{
  double preco;
  int qntEstoque;

  Produto(this.preco, this.qntEstoque);

  void Adicionar(int AddProduto){
    if(AddProduto > 0 ){
      qntEstoque += AddProduto;
      print("$AddProduto produto(s) adicionado(s) com sucesso.");
    }else {
      print("Digite uma quantidade amior de 0.");
    }
  }

  void Remover(int remover){
    if(remover > 0){
      qntEstoque -= remover;
      print("$remover de produto(s) removido(s) com sucesso.");
    }else {
      print("Digite uma quantidade maior que 0.");
    }
  }

  int VerificarQuantidade(){
    return qntEstoque;
  }
}

void main(){
  Produto meusProdutos = Produto(3.50, 150);
  print("Quantidade de produtos: ${meusProdutos.VerificarQuantidade()}");

  print("Quantos produtos deseja adicionar? ");
  int adicionar = int.parse(stdin.readLineSync()!);
  meusProdutos.Adicionar(adicionar);
  print("Quantidade atual de produtos após adição: ${meusProdutos.VerificarQuantidade()}");

  print("Quantos produtos deseja remover? ");
  int Remover = int.parse(stdin.readLineSync()!);
  meusProdutos.Remover(Remover);
  print("Quantidde atual de produtos após remoção: ${meusProdutos.VerificarQuantidade()}");
}