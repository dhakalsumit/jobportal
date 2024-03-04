import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/pages/bottom_navi.dart';

import 'package:jobportal/pages/register_page.dart';
import 'package:jobportal/services/getpost.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String value = "Job Seeker";
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'SN JOB',
                  style: TextStyle(
                      color: Color.fromARGB(221, 36, 21, 21),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                const Text("You will get a job and be satisfied",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 15)),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage(
                    "images/login.png",
                  ),
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(20),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        hintText: "Login as",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    items: const [
                      DropdownMenuItem(
                        value: "Employer",
                        child: Text("Employer"),
                      ),
                      DropdownMenuItem(
                        value: 'Job Seeker',
                        child: Text("Job Seeker"),
                      ),
                    ],
                    onChanged: (val) {
                      value = val.toString();
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 30),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.green,
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 30),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.green,
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      services().login(_emailController.text.trim(),
                          _passwordController.text, "RECRUITER");

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bottom(
                                  type: value,
                                )));
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: "Don't have an account ?",
                      ),
                      TextSpan(
                          text: ' Register Here',
                          style: const TextStyle(
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()));
                            }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
