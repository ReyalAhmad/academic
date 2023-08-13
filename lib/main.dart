import 'package:academic_app/firstpage/sign_in.dart';
import 'package:academic_app/firstpage/splash_screen.dart';
import 'package:academic_app/home.dart/about.dart';
import 'package:academic_app/home.dart/department_page.dart';
import 'package:academic_app/home.dart/student_page.dart';
import 'package:academic_app/home.dart/teacher_page.dart';
import 'package:academic_app/homepage.dart';
import 'package:academic_app/student_profile/student_profile1.dart';
import 'package:academic_app/teacher_profile/teacher_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const UniqueApp());
}
class UniqueApp extends StatelessWidget {
  const UniqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unique Academy',
      home: SplashScreen(),
    );
  }
}