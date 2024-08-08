import 'package:api/loginOrRegisterSelecterView/loginOrRegisterViewModel.dart';
import 'package:api/loginView/loginView.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../constants/constantStyle.dart';

class LoginOrRegisterView extends StatefulWidget {
  const LoginOrRegisterView({super.key});

  @override
  State<LoginOrRegisterView> createState() => _LoginOrRegisterViewState();
}

class _LoginOrRegisterViewState extends State<LoginOrRegisterView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginOrRegisterViewModel>.reactive(viewModelBuilder: () => LoginOrRegisterViewModel(),
        builder: (context, viewModel, child) {
         return Scaffold(
           backgroundColor: Colors.orange,
            // appBar: AppBar(
            //   backgroundColor: Colors.white,
            //   elevation: 2,
            //   iconTheme: IconThemeData(color: Colors.black),
            //   leading: IconButton(
            //     icon: Icon(Icons.arrow_back),
            //     onPressed: () {
            //       Navigator.of(context).pop();
            //     },
            //   ),
            //   title: Text(
            //     'Login or Register',
            //     style: TextStyle(letterSpacing: 1, color: Colors.black),
            //   ),
            // ),
            body: Column(
              // fit: StackFit.expand,
              children: [
                // Uncomment and use this line if you want to add a background image
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Image.asset(
                //     'assets/images/corner_orange.png',
                //     // fit: BoxFit.fitWidth,
                //     width: MediaQuery.of(context).size.width/1.5,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 180),
                        Text(
                          'Astro Hut',
                          style: TextStyle(
                            wordSpacing: 1,
                            letterSpacing: 2,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 100),
                        SizedBox(
                          width: 567,
                          child: ElevatedButton(
                            onPressed: () {
                        viewModel. navigateToLogin();
                              // Handle login action
                            },
                            style: elevatedButtonStyle.copyWith(
                              side: MaterialStatePropertyAll(BorderSide(color: Colors.white60)),

                              backgroundColor: MaterialStatePropertyAll(Colors.white,),

                            ),

                            child: Text('Login With Email',style: TextStyle(fontSize: 14,letterSpacing: 1,color: Colors.orangeAccent)),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 567,
                          child: ElevatedButton(
                            onPressed: () {
viewModel.navigateToRegister();
                              // Handle register action
                            },
                            style: elevatedButtonStyle.copyWith(
                              side: MaterialStatePropertyAll(BorderSide(color: Colors.white60)),
                            ),
                            child: Text('Register Now',style: TextStyle(fontSize: 14,letterSpacing: 1,wordSpacing: 1)),
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          'Quick Login With Touch Id',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),

                        ),
                        SizedBox(height: 20),

                        Icon(
                          Icons.fingerprint,
                          size: 70.0, // Adjust the size as needed
                          color: Colors.white, // Set the color of the icon
                        ),

                        // SizedBox(
                        //     height: 80,
                        //     child: Image(image: AssetImage("assets/images/finger2.png"),)),
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
SizedBox(height: 11,),
                        Stack(
                          children: [
                            Text(
                              'Touch ID',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 1,
                                color: Colors.white, // Color of the underline
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },);
  }
}
