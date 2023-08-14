import 'dart:io';
void main() {
	int count = 0;
	bool state = false;
	List<double> numberList = [];

	try {
		for (int i = 0; i < 2; i++) {
			stdout.write("${i+1}º nota: ");
			double gradeGet = double.parse(stdin.readLineSync()!);
			numberList.add(gradeGet);
			count++;
		}

		stdout.write("Deseja continuar, Sim (s) ou Não (n)? ");
		String response = stdin.readLineSync()!;

		if(response != "s") state = false;
		else state = true;

		while(state){
			stdout.write("${count + 1}º nota: ");
			double gradeGet = double.parse(stdin.readLineSync()!);
			numberList.add(gradeGet);
			count++;

			stdout.write("Deseja continuar, Sim (s) ou Não (n)? ");
			String response = stdin.readLineSync()!;

			(response == "s") ? state = true : state = false;
		}

		averageCalc(numberList, count);

	} catch (e) {
		print("O valor inserido não é valido");
	}
}

averageCalc(numberList, count) {
	double sumNumbers = 0;

	for (int i = 0; i < numberList.length; i++) {
		sumNumbers += numberList[i];
	}

	double calc = sumNumbers / count;

	print(calc);
}

// by @rom013