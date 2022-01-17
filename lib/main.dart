import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/screen/biometric.dart';
import 'package:notes/screen/home.dart';
import 'package:notes/screen/splash.dart';
import 'package:supercharged/supercharged.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Notes',
        theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: 'ECECEC'.toColor(),
        ),
        home: Splash(),
        routes: {
          Splash.id: (context) => Splash(),
          biometric.id: (context) => biometric()
          });
  }
}
