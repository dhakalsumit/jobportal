import 'package:flutter/material.dart';
import 'package:jobportal/pages/homescreen.dart';
import 'package:jobportal/pages/log_in.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              const Image(
                image: AssetImage(
                  "images/login.png",
                ),
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              // TextField(
              //   decoration: InputDecoration(
              //     contentPadding: const EdgeInsets.only(top: 30),
              //     border: const OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(10)),
              //     ),
              //     hintText: "Register as",
              //     prefixIcon: const Icon(
              //       Icons.person,
              //       color: Colors.green,
              //     ),
              //     suffixIcon: IconButton(
              //         onPressed: () {},
              //         icon: const Icon(
              //           Icons.arrow_drop_down,
              //           size: 30,
              //           color: Colors.green,
              //         )),
              //   ),
              // ),
              DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(20),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      hintText: "Register as",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  items: const [
                    DropdownMenuItem(
                      value: 12,
                      child: Text("Employer"),
                    ),
                    DropdownMenuItem(
                      value: 13,
                      child: Text("Job Seeker"),
                    ),
                  ],
                  onChanged: (value) {}),
              const SizedBox(
                height: 20,
              ),
              const TextField(
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
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 30),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Phone Number",
                    prefixIcon: Icon(
                      Icons.phone,
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                child: const Center(
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white70)),
                child: const Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
