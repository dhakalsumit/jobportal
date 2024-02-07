import 'package:flutter/material.dart';
import 'package:jobportal/pages/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JOB PORTAL',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
