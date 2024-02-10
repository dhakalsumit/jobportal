import 'package:flutter/material.dart';

class ApplicationForm extends StatefulWidget {
  const ApplicationForm({super.key});

  @override
  State<ApplicationForm> createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text("My Application"),
            ),
          ],
        ),
      ),
    );
  }
}
