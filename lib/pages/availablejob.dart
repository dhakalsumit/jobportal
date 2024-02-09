import 'package:flutter/material.dart';

class Availablejob extends StatefulWidget {
  const Availablejob({super.key});

  @override
  State<Availablejob> createState() => _AvailablejobState();
}

class _AvailablejobState extends State<Availablejob> {
  final List<String> job = [
    "Sr. React Native Developer",
    "Sr. Flutter Developer",
    "Jr. MERN Stack Developer",
    "Sr. MERN Stack Developer",
    "Jr. Flutter Developer",
  ];
  final List<String> role = [
    "Mobile App Developer",
    "Mobile App Developer",
    "Web Developer",
    "Web Developer",
    "App Developer",
  ];
  final List<String> country = [
    "USA",
    "Nepal",
    "India",
    "Canada",
    "Nepal",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              height: 20,
              width: 260,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                    // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      job[index],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      role[index],
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(country[index]),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Job Details"))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
