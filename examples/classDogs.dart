// Definindo a classe base Animal
class Animal {
  // Definindo um método na classe base que pode ser sobrescrito
  void fazerBarulho() {
    print('Animal fazendo barulho');
  }
}

// Definindo a classe Cachorro, que herda da classe Animal
class Cachorro extends Animal {
  /*
    Quando você usa extends em uma classe derivada (subclasse), você está indicando que essa classe vai herdar os membros 
    (atributos e métodos) da classe base (superclasse). Isso significa que a subclasse terá acesso aos membros da superclasse
    e pode usá-los ou substituí-los, se necessário.
  */


  // Sobrescrevendo o método fazerBarulho da classe base Animal
  @override // sobrepor / sobrescrever um método ou atributo
  void fazerBarulho() {
    // Imprime uma mensagem específica de "Cachorro latindo"
    print('Cachorro latindo');
  }
}

void main() {
  // Criando uma instância da classe Cachorro
  var cachorro = Cachorro();
  cachorro.fazerBarulho();

  var animal = Animal();
  animal.fazerBarulho();
}
