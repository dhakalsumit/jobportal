import 'package:flutter/material.dart';
import 'package:jobportal/pages/homescreen.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

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
      body: const Column(),
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
           icon: IconButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                }, icon: const Icon(Icons.home)),
            label: 'Home',
            
          ),
         const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
         const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.menu),
          //   label: 'Menu',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
