import 'dart:io';
void main() {
	int count = 0;
	bool state = false;

	try {
		for (int i = 0; i < 2; i++) {
			stdout.write("${i+1}º nota: ");
			double gradeGet = double.parse(stdin.readLineSync()!);
			count++;
		}

		stdout.write("Deseja continuar, Sim (s) ou Não (n)? )");
		String response = stdin.readLineSync()!;

		if(response == "s") state = true;

		while(state){
			stdout.write("${count}º nota: ");
			double gradeGet = double.parse(stdin.readLineSync()!);
			count++;

			stdout.write("Deseja continuar, Sim (s) ou Não (n)? )");
			String response = stdin.readLineSync()!;

			(response == "s") ? state = true : state = false;
		}

	} catch (e) {
		print("O valor inserido não é valido");
	}
}


// by @rom013