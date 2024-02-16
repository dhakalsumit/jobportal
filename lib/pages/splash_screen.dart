import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobportal/pages/log_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      // Push the main screen onto the navigator stack
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
            image: AssetImage(
              "images/login.png",
            ),
            color: Colors.green),
      ),
    );
  }
}
