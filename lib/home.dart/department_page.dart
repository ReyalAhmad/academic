import 'package:academic_app/dart_file.dart/squre.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Department_Page extends StatefulWidget {
  const Department_Page({super.key});

  @override
  State<Department_Page> createState() => _Department_PageState();
}

class _Department_PageState extends State<Department_Page> {
  final List _posts = [
    'post 1',
    
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'Notice Board',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, Index) {
                return Square();
              }),
        )
        );
  }
}
