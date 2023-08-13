import 'dart:async';

import 'package:academic_app/firstpage/sign_in.dart';
import 'package:academic_app/firstpage/sign_up.dart';
import 'package:academic_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 1),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => Signin_page(),
          )),
    );
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.auto_stories,
          size: 100,
        ),
      ),
    );
  }
}
