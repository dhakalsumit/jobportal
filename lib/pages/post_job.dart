import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jobportal/pages/showdetails.dart';

class PostJob extends StatefulWidget {
  const PostJob({super.key});

  @override
  State<PostJob> createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  File? imagepath;
  String? imageName;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textFieldController1 = TextEditingController();
  final TextEditingController _textFieldController2 = TextEditingController();
  final TextEditingController _textFieldController3 = TextEditingController();
  final TextEditingController _textFieldController4 = TextEditingController();
  final TextEditingController _textFieldController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Center(
              child: Text(
                "Post Your Job",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _textFieldController1,
                      decoration: const InputDecoration(
                        hintText: "Job Title",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter job title';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _textFieldController2,
                      decoration: const InputDecoration(
                        hintText: "Role",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter role';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _textFieldController3,
                      decoration: const InputDecoration(
                        hintText: "Country ",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter country name';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _textFieldController4,
                      decoration: const InputDecoration(
                        hintText: "Salary",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Salary';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _textFieldController5,
                      decoration: const InputDecoration(
                        hintText: "Skills Required",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Skills required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snack.bar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShowDetails(
                                        jobtitle: _textFieldController1.text,
                                        role: _textFieldController2.text,
                                        country: _textFieldController3.text,
                                        salary: _textFieldController4.text,
                                        skills: _textFieldController5.text,
                                      )));
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
