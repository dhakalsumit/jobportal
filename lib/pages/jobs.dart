import 'package:flutter/material.dart';
import 'package:jobportal/constants/dummy_jobs.dart';

import 'package:jobportal/pages/job_description.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
    return SizedBox(
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            width: 200,
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
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    role[index],
                    style: const TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(country[index]),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JobDescription(
                              role: role[index],
                              title: myJobs[index],
                              country: country[index],
                              salary: salary[index],
                              skills: skills[index],
                            ),
                          ));
                    },
                    child: const Text("Job Details"))
              ],
            ),
          );
        },
      ),
    );
  }
}
