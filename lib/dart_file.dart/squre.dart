import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Square extends StatefulWidget {
  const Square({super.key});

  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            elevation: 25,
            actions: [
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.70,
              ),
            ],
            title: Text(
              '🌟 Admission Notice: Join Our Academy Today! 🌟\n\n\n📚 Discover Excellence, Ignite Your Potential! 📚\n\n Are you ready to embark on an extraordinary journey of learning, growth, and achievement? Look no further! We are thrilled to announce that admissions are now open at Unique Academy, where brilliance meets opportunity.\n\n Why Choose Unique Academy?\n\n 🔥Exceptional Faculty.\n  🌐Comprehensive   Curriculum.\n 🌈 Holistic Development. \n 🌍 Global Perspective. \n 🌍 Global Perspective. \n 🎓 Wide Range of Programs \n\n Admission Details:\n\n\n 📅 Application Deadline: 25-09-2025\n📍 Location: Sonargaon,Narayanganj \n\n\n 🌟 Ignite Your Potential with Unique Academy ! 🌟 ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset(
            'lib/images/notice.jpg',
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          _showDialog();
        },
      ),
    );
  }
}
