import 'package:flutter/material.dart';
import 'package:jobportal/pages/availablejob.dart';

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
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
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
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'POPULAR CATEGORY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.laptop,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "Graphics & Design",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.green),
                            ),
                            Text(
                              "2350 open position",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                                color: Colors.black45,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.code,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "Web Developer",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.green),
                            ),
                            Text(
                              "2310 open position",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                                color: Colors.black45,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.flutter_dash,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "App Developer",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.green),
                            ),
                            Text(
                              "2350 open position",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                                color: Colors.black45,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.laptop_chromebook,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "MERN Developer",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.green),
                            ),
                            Text(
                              "2310 open position",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                                color: Colors.black45,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.flutter_dash,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "App Developer",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.green),
                            ),
                            Text(
                              "2350 open position",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                                color: Colors.black45,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.laptop_chromebook,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "MERN Developer",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.green),
                            ),
                            Text(
                              "2310 open position",
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                                color: Colors.black45,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'ALL AVAILABLE JOBS',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Availablejob(),
          ],
        ),
      ),
    );
  }
}
