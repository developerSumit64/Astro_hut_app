import 'package:flutter/material.dart';

import 'constants/constantStyle.dart';

class SingUpView extends StatefulWidget {
  const SingUpView({super.key});

  @override
  State<SingUpView> createState() => _SingUpViewState();
}

class _SingUpViewState extends State<SingUpView> {
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
          'Sign Up',
          style: TextStyle(letterSpacing: 1, color: Colors.black),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
        
        
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/corner_orange.png',
                // fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width/1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  // SizedBox(height: 30),
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: IconButton(
                  //     icon: Icon(Icons.arrow_back),
                  //     onPressed: () {
                  //       // Handle back button press
                  //     },
                  //   ),
                  // ),
                  // SizedBox(height: 20),
                  Text(
                    'Astro Hut',
                    style: TextStyle(
                      wordSpacing: 1,
                      letterSpacing: 1,

                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                        child: Text("Username",style: TextStyle(letterSpacing: 1.5,color: Colors.black54),)),
                  ),
                  SizedBox(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  //   child: Align(
                  //       alignment: Alignment.topLeft,
                  //       child: Text("Username",style: TextStyle(letterSpacing: 1.5,fontWeight: FontWeight.bold),)),
                  // ),
                  // SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: kTextFormFieldDecoration.copyWith(
                        // labelText: ' Username',


                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Email id",style: TextStyle(letterSpacing: 1.5,color: Colors.black54),)),
                  ),
                  SizedBox(height: 10),

                  SizedBox(height: 50,
                    child: TextFormField(
                      decoration: kTextFormFieldDecoration.copyWith(
                        // labelText: ' ,

                      ),
                    ),
                  ),

                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Enter Password",style: TextStyle(letterSpacing: 1.5,color: Colors.black54),)),
                  ),
                  SizedBox(height: 10),



                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      obscureText: true,
                      decoration: kTextFormFieldDecoration.copyWith(
                        // labelText: 'Enter Password',

                      ),
                    ),
                  ), SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Re - Enter Password",style: TextStyle(letterSpacing: 1.5,color: Colors.black54),)),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 50,
                    child: TextFormField(
                      obscureText: true,
                      decoration: kTextFormFieldDecoration.copyWith(
                        // labelText: 'Re-enter Password',

                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  SizedBox(
                    width: 630,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle register button press
                      },
                      style:elevatedButtonStyle,
                      child: Text('Register Now'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          // Handle login button press
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
