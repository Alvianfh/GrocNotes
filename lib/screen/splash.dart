import 'dart:async';
import 'package:flutter/material.dart';
import 'package:notes/screen/biometric.dart';

class Splash extends StatefulWidget {
  static const String id = "Splash";
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late Timer _timer;

  RemoveSplash() {
    return _timer = Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(biometric.id);
    });
  }

  @override
  void initState() {
    super.initState();
    RemoveSplash();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: Image(
          width: 200,
          image: AssetImage(
            "assets/images/logo.png",
          ),
        ),
      ),
    );
  }
}
