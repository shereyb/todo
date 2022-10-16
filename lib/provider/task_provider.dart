import 'package:flutter/cupertino.dart';
import 'package:todoappp/api/firebase_api.dart';
import 'package:todoappp/models/task.dart';
class TasksProvider extends ChangeNotifier {
  List<Task> _tasks = [];
  List<Task> get tasks => _tasks;
  void setTasks(List<Task> tasks) =>
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        _tasks = tasks;
        notifyListeners();
      });
  void addTask(Task task){
    FirebaseApi.createTask(task);
  }
  void updateTask(Task task, String title) {
    task.title = title;
    FirebaseApi.updateTasks(task);
  }

  void updateReminder(Task task,bool showReminder,{String time="Add Remainder"}) {
    task.time = time ;
    task.showAddReminder = true;
    FirebaseApi.updateTasks(task);
  }
 
 void reorderlist(List<Task> _oldTasks,int newIndex,int oldIndex){
   final item =  _oldTasks.removeAt(oldIndex);
   _oldTasks.insert(newIndex, item);
   _tasks = _oldTasks;
      //FirebaseApi.updateTasks(task);
      notifyListeners();
 }


  bool toggleTaskStatus(Task task) {
    task.isDone = !task.isDone;
    FirebaseApi.updateTasks(task);
    return task.isDone;
  }

  void removeTask(Task task) {
    FirebaseApi.removeTask(task);
  }
}