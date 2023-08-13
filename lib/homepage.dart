
import 'package:academic_app/home.dart/about.dart';
import 'package:academic_app/home.dart/department_page.dart';
import 'package:academic_app/home.dart/student_page.dart';
import 'package:academic_app/home.dart/teacher_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigatorbuttomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    Department_Page(),
    Teacherinfo_Page(),
    Studentinfo_Page(),
    About_Page()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _navigatorbuttomBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Notice'),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups), label: 'Teacher Info'),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups), label: 'Student Info'),
            BottomNavigationBarItem(
                icon: Icon(Icons.flutter_dash), label: 'About'),
          ]),
    );
  }
}
