import 'package:flutter/material.dart';

import '../constants/constantStyle.dart';

class LoginOrRegisterView extends StatefulWidget {
  const LoginOrRegisterView({super.key});

  @override
  State<LoginOrRegisterView> createState() => _LoginOrRegisterViewState();
}

class _LoginOrRegisterViewState extends State<LoginOrRegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Login or Register',
          style: TextStyle(letterSpacing: 1, color: Colors.black),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Uncomment and use this line if you want to add a background image
          // Image.asset(
          //   'assets/images/uh.jpg',
          //   fit: BoxFit.cover,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 140),
                  Text(
                    'Astro Hut',
                    style: TextStyle(
                      wordSpacing: 1,
                      letterSpacing: 1,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade600,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 567,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle login action
                      },
                      style: roundedelevatedButtonStyle,

                      child: Text('Login With Email',style: TextStyle(letterSpacing: 1)),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 567,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle register action
                      },
                      style: roundedelevatedButtonStyle,
                      child: Text('Register Now',style: TextStyle(letterSpacing: 1,wordSpacing: 1)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '-------------------Or-------------------',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),

                  ),

                  ElevatedButton(
                    onPressed: () {
                      // Handle Touch ID action
                    },
                    style: roundedelevatedButtonStyle,
                    child: Text('Continue with Touch ID'),
                  ),
                  SizedBox(height: 20),
              SizedBox(
                  height: 80,
                  child: Image(image: AssetImage("assets/images/Touchid.png"))),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Handle login with Facebook button press
                  //   },
                  //   style: elevatedButtonStyle,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text('Login with Facebook  '),
                  //       Icon(Icons.facebook),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 20),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text("Don't have an account?"),
                  //     TextButton(
                  //       onPressed: () {
                  //         // Handle sign-up button press
                  //       },
                  //       child: Text(
                  //         'Sign Up',
                  //         style: TextStyle(color: Colors.orange),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
