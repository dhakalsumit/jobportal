import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/pages/bottom_navi.dart';

import 'package:jobportal/pages/register_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
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
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 30),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: "Login as",
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                        color: Colors.green,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
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
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
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
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Bottom()));
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
    );
  }
}
