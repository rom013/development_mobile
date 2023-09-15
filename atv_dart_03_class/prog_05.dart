import 'dart:io';

class Tasks {
  String statusTask;
  String dateTask;
  String descriptionTask;

  Tasks(this.dateTask, this.descriptionTask, this.statusTask);
}

class ScheduleTasks {
  List<Tasks> tasks = [];

  ScheduleTasks(){
    tasks = [];
  }

  void addTasks(Tasks task){
    tasks.add(task);
  }
}

main() {
  var scheduleTasks = ScheduleTasks();

  stdout.write("Descrição para a tarefa: ");
  String description = stdin.readLineSync()!;
  stdout.write("Status da tarefa: ");
  String status = stdin.readLineSync()!;
  stdout.write("Data de validade da tarefa: ");
  String date = stdin.readLineSync()!;

  scheduleTasks.addTasks(Tasks(date, description, status));

  print("descrição: ${scheduleTasks.tasks[0].descriptionTask}, status: ${scheduleTasks.tasks[0].statusTask}, validade: ${scheduleTasks.tasks[0].dateTask}");
}
