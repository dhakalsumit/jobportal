import 'package:flutter/material.dart';
import 'package:jobportal/pages/homescreen.dart';
import 'package:jobportal/pages/jobs.dart';
import 'package:jobportal/pages/my_application.dart';
import 'package:jobportal/pages/post_job.dart';
import 'package:jobportal/pages/search.dart';

class Bottom extends StatefulWidget {
  final String type;
  const Bottom({super.key, required this.type});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          Search(),
          Jobs(),
          widget.type == "Job Seeker" ? MyApplication() : PostJob()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Jobs',
          ),
          widget.type == "Job Seeker"
              ? BottomNavigationBarItem(
                  icon: Icon(Icons.portrait),
                  label: 'My Application',
                )
              : BottomNavigationBarItem(
                  icon: Icon(Icons.portrait),
                  label: 'Post Application',
                )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
