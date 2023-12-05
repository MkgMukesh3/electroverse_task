import 'package:flutter/material.dart';
import 'package:mukesh_gupta_task/view/auth/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Color(0xffF9F9F9),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}
