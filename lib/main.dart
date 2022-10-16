import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoappp/homepage.dart';
import 'package:todoappp/provider/task_provider.dart';
import 'package:todoappp/screens/home.dart';

Future<void> main()
 async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   Provider.debugCheckInvalidValueType = null;

  runApp(Provider<TasksProvider>(
    create: (context) {
     return TasksProvider();
    },
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todoapp',
      home: homepage(),
      // homeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

