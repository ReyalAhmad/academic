import 'package:academic_app/firstpage/component/my_button.dart';
import 'package:academic_app/firstpage/sign_in.dart';
import 'package:academic_app/firstpage/splash_screen.dart';
import 'package:academic_app/helper.dart/firebase_helpers.dart';
import 'package:academic_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                // Icon(
                //   Icons.lock,
                //   size: 100,
                // ),
                // SizedBox(height: 50),
                // Text(
                //   'Welcome to Our Academy',
                //   style: TextStyle(
                //     fontSize: 16,
                //   ),
                // ),
                // SizedBox(height: 50),
          
                // TextFormField(
                //   obscureText: false,
                //   controller: _emailController,
                //   decoration: InputDecoration(
                //       prefixIcon: Icon(Icons.email),
                //       hintText: 'Enter Your Email',
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(20))),
                // ),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: false,
                    controller: _emailController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter Your E-mail',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400)),
                        fillColor: Colors.grey.shade200,
                        filled: true),
                  ),
                ),
          
                SizedBox(height: 25),
                // TextFormField(
                //   obscureText: true,
                //   controller: _passwordController,
                //   decoration: InputDecoration(
                //       prefixIcon: Icon(Icons.password),
                //       hintText: 'Enter Your Password',
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(20))),
                // ),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Enter Your Password',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400)),
                        fillColor: Colors.grey.shade200,
                        filled: true),
                  ),
                ),
                SizedBox(height: 15),
                //forgot Password
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Text(
                //         'Forgot Password ?',
                //         style: TextStyle(
                //           color: Colors.grey[600],
                //           fontSize: 16,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      var email = _emailController.text;
                      var password = _passwordController.text;
                      var obj =
                          FirebaseHelpers().signUp(email, password, context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomePage(),
                          ));
                    },
                    child: Text('Sign up')),
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Signin_page(),
                          ));
                    },
                    child: Text('Already Sign up ? login'))
              ],
            ),
          ),
        ),

        // body: SafeArea(
        //   child: Center(
        //     child: Column(
        //       children: [
        //         SizedBox(height: 50),
        //         //logo
        //         Icon(
        //           Icons.lock,
        //           size: 100,
        //         ),
        //         SizedBox(height: 50),
        //         Text(
        //           'Welcome to Our Academy',
        //           style: TextStyle(
        //             fontSize: 16,
        //           ),
        //         ),
        //         SizedBox(height: 25),
        //         //Email TextFiled
        //         Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 20),
        //           child: TextField(
        //             obscureText: false,
        //             controller: _emailController,
        //             decoration: InputDecoration(
        //                 prefixIcon: Icon(Icons.email),
        //                 hintText: 'Enter Your E-mail',
        //                 enabledBorder: OutlineInputBorder(
        //                     borderSide: BorderSide(color: Colors.white)),
        //                 focusedBorder: OutlineInputBorder(
        //                     borderSide: BorderSide(color: Colors.grey.shade400)),
        //                 fillColor: Colors.grey.shade200,
        //                 filled: true),
        //           ),
        //         ),

        //         SizedBox(height: 25),
        //         //pasword textfild
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20),
        //   child: TextField(
        //     obscureText: true,
        //     controller: _passwordController,
        //     decoration: InputDecoration(
        //         prefixIcon: Icon(Icons.password),
        //         hintText: 'Enter Your Password',
        //         enabledBorder: OutlineInputBorder(
        //             borderSide: BorderSide(color: Colors.white)),
        //         focusedBorder: OutlineInputBorder(
        //             borderSide: BorderSide(color: Colors.grey.shade400)),
        //         fillColor: Colors.grey.shade200,
        //         filled: true),
        //   ),
        // ),
        // SizedBox(height: 15),
        // //forgot Password
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 25),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       Text(
        //         'Forgot Password ?',
        //         style: TextStyle(
        //           color: Colors.grey[600],
        //           fontSize: 16,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(height: 15),
        //         //signin button
        //         // MyButton(
        //         //   onTap: () {
        //         //     var email=_emailController.text;
        //         //    var password=_passwordController.text;
        //         //     var obj=FirebaseHelpers().signUp(email, password, context);
        //         //     Navigator.push(
        //         //        context,
        //         //       MaterialPageRoute(
        //         //         builder: (_) => HomePage(),
        //         //        ));
        //         //   },
        //         // )

        //         GestureDetector(
        //           onTap: () {
        //              var email=_emailController.text;
        //            var password=_passwordController.text;
        //            var obj=FirebaseHelpers().signUp(email, password, context);
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (_) => HomePage(),
        //                 ));
        //           },
        //           child: Container(
        //             padding: EdgeInsets.all(25),
        //             margin: EdgeInsets.symmetric(horizontal: 25),
        //             decoration: BoxDecoration(
        //                 color: Colors.black,
        //                 borderRadius: BorderRadius.circular(20)),
        //             child: Center(
        //               child: Text(
        //                 'Sign In',
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: 15),
        //               ),
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
