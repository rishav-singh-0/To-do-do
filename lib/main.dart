import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:tododo/screens/tasks_screen.dart';
import 'package:tododo/models/task_data.dart';
import 'package:tododo/screens/login_screen.dart';
import 'package:tododo/screens/add_task_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          TaskScreen.id: (context) => TaskScreen(),
          AddTaskScreen.id: (context) => TaskScreen(),
        },
      ),
    );
  }
}
