import 'dart:io';
import 'dart:math';

main() {
	try {
		stdout.write("Iniciar sorteio? sim (s) ou não (n) ");
		String option = stdin.readLineSync()!;
		if(option == "s" || option == "S" ){
			print(dado());
		}
		else{
			return;
		}
	} catch (e) {
		print("Valor invalido");
	}
}

String dado(){
	int numberRandom = Random().nextInt(6);
	return "O número sorteado foi: $numberRandom";
}