import 'package:academic_app/dart_file.dart/squre.dart';
import 'package:academic_app/teacher_profile/teacher_profile.dart';
import 'package:academic_app/teacher_profile/teacher_profile2.dart';
import 'package:academic_app/teacher_profile/teacher_profile3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Teacherinfo_Page extends StatefulWidget {
  const Teacherinfo_Page({super.key});

  @override
  State<Teacherinfo_Page> createState() => _Teacherinfo_PageState();
}

class _Teacherinfo_PageState extends State<Teacherinfo_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: Text(
            'Teacher Information',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Teacher_Profile(),
                        ));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(
                            'lib/images/robert.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Robert Brown',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Dept. of EEE',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Unique Academy',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                )
                ),
            //2nd techer
            Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                   onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Teacher_profile2(),
                        ));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(
                            'lib/images/hery.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Sundeep Sharma',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Dept. of MBA',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Unique Academy',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                )),
                //3rd teacher
            GestureDetector(
               onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Teacher_Profile3(),
                        ));
                  },
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(
                            'lib/images/jolly.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Angelina Jolly',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Dept. of Physics',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Unique Academy',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        )));
  }
}
