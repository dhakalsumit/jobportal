import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        centerTitle: true,
        title: const Text(
          "SN JOBS",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.green,
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.code,
                        color: Colors.yellow,
                      ),
                      Text(
                        "12345",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "live jobs",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.green,
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.business,
                        color: Colors.yellow,
                      ),
                      Text(
                        "9122",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "Companies",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 13),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.green,
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.man,
                        color: Colors.yellow,
                      ),
                      Text(
                        "12345",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "job seeker",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 13),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.green,
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.yellow,
                      ),
                      Text(
                        "12345",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "Employer",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
