import 'package:flutter/material.dart';
import 'package:mukesh_gupta_task/const.dart';
import 'package:mukesh_gupta_task/view/auth/login/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate() {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => LoginPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.fill),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Image.asset(
              splashLogo,
            ),
          ),
        ),
      ),
    );
  }
}
