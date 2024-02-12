// import 'package:flutter/material.dart';
// import 'package:jobportal/pages/homescreen.dart';
// import 'package:jobportal/pages/jobs.dart';
// import 'package:jobportal/pages/my_application.dart';
// import 'package:jobportal/pages/search.dart';

// class BottomE extends StatefulWidget {
//   const BottomE({super.key});

//   @override
//   State<BottomE> createState() => _BottomEState();
// }

// class _BottomEState extends State<BottomE> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: const [HomeScreen(), Search(), Jobs(), MyApplication()],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Jobs',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.portrait),
//             label: 'New Job',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.green,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
