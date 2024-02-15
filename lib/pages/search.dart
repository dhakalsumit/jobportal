import 'package:flutter/material.dart';
import 'package:jobportal/pages/post_job.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PostJob()));
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 12, right: 10, top: 12),
                  child: SearchBar())
            ],
          ),
        ));
  }
}
