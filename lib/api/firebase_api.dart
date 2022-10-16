import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoappp/components/utils.dart';
import 'package:todoappp/models/task.dart';
class FirebaseApi {
  static Future<String> createTask(Task task) async {
    final docTask = FirebaseFirestore.instance.collection('task').doc();
    task.id = docTask.id;
    await docTask.set(task.toJson());
    return docTask.id;
  }

  static Stream<List<Task>> readTasks() => FirebaseFirestore.instance
      .collection('task')
      .snapshots()
      .transform(Utils.transformer((Task.fromJson)));
  static Future updateTasks(Task task) async {
    final docTask = FirebaseFirestore.instance.collection('task').doc(task.id);
    await docTask.update(task.toJson());
  }

  static Future removeTask(Task task) async {
    final docTask = FirebaseFirestore.instance.collection('task').doc(task.id);
    await docTask.delete();
  }
}