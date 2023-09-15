import 'dart:math';

abstract class FormaGeometrica { 
  /* 
    abstract => 
    Uma classe abstrata é uma classe que não pode ser instanciada, ou seja, não pode criar objetos a partir dela. Uma classe abstrata serve como
    um modelo ou uma base para outras classes que herdam dela. é usada quando você deseja declarar um método em uma classe base, mas não fornece uma 
    implementação concreta desse método na classe base
  */

  double calcArea();
  double calcPerimetro();
}

class Circulo extends FormaGeometrica {
  double raio;
  
  Circulo(this.raio);
  
  @override
  double calcArea() {
    return pi * raio * raio;
  }

  @override 
  double calcPerimetro() {
    return 2 * pi * raio;
  }
}
class Quadrado extends FormaGeometrica {
  double lado;
  
  Quadrado(this.lado);
  
  @override
  double calcArea() {
    return lado * lado;
  }

  @override 
  double calcPerimetro() {
    return lado * 4;
  }
}
class Triangulo extends FormaGeometrica {
  double base;
  double altura;
  double lado1;
  double lado2;
  
  Triangulo(this.base, this.altura, this.lado1, this.lado2);
  
  @override
  double calcArea() {
    return (base * altura)/2;
  }

  @override 
  double calcPerimetro() {
    return base + lado1 + lado2;
  }
}

main() {
  final circulo = Circulo(5);
  print('Área do círculo: ${circulo.calcArea()}');
  print('Perímetro do círculo: ${circulo.calcPerimetro()}');
  
  final quadrado = Quadrado(8);
  print('Área do quadradro: ${quadrado.calcArea()}');
  print('Perímetro do quadrado: ${quadrado.calcPerimetro()}');

  final triangulo = Triangulo(80, 120, 20, 20);
  print('Área do triângulo: ${triangulo.calcArea()}');
  print('Perímetro do triângulo: ${triangulo.calcPerimetro()}');
}