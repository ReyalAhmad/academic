import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Activities_page extends StatefulWidget {
  const Activities_page({super.key});

  @override
  State<Activities_page> createState() => _Activities_pageState();
}

class _Activities_pageState extends State<Activities_page> {
  final imgList = [
    'lib/activities/1.jpg',
    'lib/activities/2.jpg',
    'lib/activities/3.jpg',
    'lib/activities/4.jpg',
    'lib/activities/5.jpg',
    'lib/activities/6.jpg',
    'lib/activities/7.jpg',
    'lib/activities/9.jpg',
    'lib/activities/10.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 10,
        centerTitle: true,
        title: Text(
          'Gallery',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: List.generate(imgList.length, (index) {
          return Container(
            height: MediaQuery.of(context).size.height * 20,
            width: MediaQuery.of(context).size.width * 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgList[index]), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)
                    ),
          );
        }),
      ),
    );
  }
}
