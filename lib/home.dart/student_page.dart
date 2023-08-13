import 'package:academic_app/student_profile/student_profile1.dart';
import 'package:academic_app/student_profile/student_profile2.dart';
import 'package:academic_app/student_profile/student_profile3.dart';
import 'package:academic_app/student_profile/student_profile4.dart';
import 'package:academic_app/student_profile/student_profile5.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Studentinfo_Page extends StatefulWidget {
  const Studentinfo_Page({super.key});

  @override
  State<Studentinfo_Page> createState() => _Studentinfo_PageState();
}

class _Studentinfo_PageState extends State<Studentinfo_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'Student Information',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1st student
            Padding(
              padding: EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Student_profile1(),
                        ));
                  },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child:
                              Image.asset('lib/images/S1.jpg', fit: BoxFit.fill),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Emma',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Reg: 11502001512',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Batch: 1st',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                  Text(
                                    'Sec: CSE',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))
                  ]),
                ),
              ),
            ),
            //2nd S
            Padding(
              padding: EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Student_profile2(),
                        ));
                  },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Image.asset(
                            'lib/images/S2.jpg',
                            fit: BoxFit.fill,
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'William',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Reg : 11502001513',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Batch : 1st',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                  Text(
                                    'Sec : CSE',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))
                  ]),
                ),
              ),
            ),
            //3RD S
            Padding(
              padding: EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Student_profile3(),
                        ));
                  },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child:
                              Image.asset('lib/images/S3.jpg', fit: BoxFit.fill),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Benjamin',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Reg : 11502001514',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Batch : 1st',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                  Text(
                                    'Sec : CSE',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))
                  ]),
                ),
              ),
            ),

            //4th s
            Padding(
              padding: EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Student_profile4(),
                        ));
                  },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child:
                              Image.asset('lib/images/S4.jpg', fit: BoxFit.fill),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Camila',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Reg: 11502001515',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Batch: 1st',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                  Text(
                                    'Sec: CSE',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))
                  ]),
                ),
              ),
            ),
            //5th s
            Padding(
              padding: EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Student_Profile5(),
                        ));
                  },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child:
                              Image.asset('lib/images/S5.jpg', fit: BoxFit.fill),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Penelope',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Reg: 11502001516',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Batch: 1st',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                  Text(
                                    'Sec: CSE',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
