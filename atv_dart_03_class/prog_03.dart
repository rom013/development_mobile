import 'dart:io';

class Contato {
  String name;
  int phoneNumber;
  String addresEmail;

  Contato(this.addresEmail, this.name, this.phoneNumber);
}

List<Object> number = [];

class LivrosDeEnderecos {
	void addNewContat(name, addressEmail, phoneNumber){
		number.add({name, addressEmail, phoneNumber});
	}

	void readListContat(){
		number.forEach((e) => print(e));
	}

	void removeContat(){
		number.removeLast();
		print("Contato removido com sucesso!");
	}
}

main() {
	int numberControl = 0;

	while(numberControl == 0){
		var livrosDeEnderecos = LivrosDeEnderecos();

		stdout.write("1 - Adicionar novo contato \n2 - Remover ultimo contato \n3 - Listar lista de contatos \n:");
		int numberOption = int.parse(stdin.readLineSync()!);

		if(numberOption == 1){
			Contato contato = Contato("ada", "ds", 213131);
			livrosDeEnderecos.addNewContat(contato.name, contato.addresEmail, contato.phoneNumber);
		}
		else if(numberOption == 2){
			livrosDeEnderecos.removeContat();
		}
		else if(numberOption == 3){
			livrosDeEnderecos.readListContat();
		}
		else{
			print("opção invalida");
		}


		stdout.write("Deseja continuar? sim(0) ou não(1)");
		numberControl = int.parse(stdin.readLineSync()!);
	}
}