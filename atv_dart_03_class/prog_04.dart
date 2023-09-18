import 'dart:io';

class Carro {
  String marca;
  String modelo;
  int ano;
  bool ligado = false;
  int velocidade = 0;

  Carro(this.marca, this.modelo, this.ano);

  void ligar() {
    if (!ligado) {
      ligado = true;
      print('O carro está ligado.');
    } else {
      print('O carro já está ligado.');
    }
  }

  void desligar() {
    if (ligado) {
      ligado = false;
      velocidade = 0;
      print('O carro está desligado.');
    }
  }

  void acelerar(int rapido) {
    if (ligado) {
      velocidade += rapido;
      print('O carro acelerou para $velocidade km/h.');
    } else {
      print('Você precisa ligar o carro antes de acelerar.');
    }
  }
}

void main() {
  Carro meuCarro = Carro('', '', 2022);
  print('Digite a marca do carro: ');
  String marca = stdin.readLineSync()!;

  print('Digite o modelo do carro: ');
  String modelo = stdin.readLineSync()!;

  print('Digite o ano do carro: ');
  int ano = int.parse(stdin.readLineSync()!);
  Carro(marca, modelo, ano);

  print("Você deseja ligar o carro? Sim/Não");
  String ligar = stdin.readLineSync()!;
  if(ligar == 'Sim' || ligar == 'sim' || ligar == 's' || ligar == 'S'){
    meuCarro.ligar();
  }
  else{
    print("Ok.");
    return;
  }

  print("Você deseja acelerar o carro? Sim/Não");
  String acelerar= stdin.readLineSync()!;
  if(acelerar == 'Sim' || acelerar == 'sim' || acelerar == 's' || acelerar == 'S'){
    meuCarro.acelerar(int.parse(acelerar));
    print("Carro acelerado.");
  }
  else{
    print("Ok.");
  }

  print("Você deseja desligar o carro? Sim/Não");
  String desligar = stdin.readLineSync()!;
  if(desligar == 'Não' || desligar == 'não' || desligar == 'N' || desligar == 'n' || desligar == 'Nao' || desligar == 'nao'){
    print("Ok.");

  }
  else{
    meuCarro.desligar();

  }

}
