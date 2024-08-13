import 'package:api/loginView/loginViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../constants/constantStyle.dart';
// import 'constants/constantStyle.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(viewModelBuilder: () => LoginViewModel(),
        builder:(context, viewModel, child) {
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
                'Login',
                style: TextStyle(letterSpacing: 1, color: Colors.black),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                // fit: StackFit.expand,
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
              
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
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Email - id",style: TextStyle(letterSpacing: 1.5,color: Colors.black54),)),
                          ),
                          SizedBox(height: 10),
                          SizedBox(height: 50,
                            child: TextFormField(
                              decoration: kTextFormFieldDecoration.copyWith(
                                // labelText: 'Email id',
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Password",style: TextStyle(letterSpacing: 1.5,color: Colors.black54),)),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              obscureText: true,
                              decoration: kTextFormFieldDecoration.copyWith(
                                // labelText: 'Password',
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                viewModel.navigateToForgget();
                                // Handle forgot password button press
                              },
                              child: Text(
                                'Forgot Password ?',
                                style: TextStyle(color: Colors.redAccent.shade200),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                viewModel.navigateToFirstView();
                                // Handle login button press
                              },
                              style: elevatedButtonStyle,
                              child: Text('Login'),
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
                          SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle login with Facebook button press
                              },
                              style: elevatedButtonStyle.copyWith(
                                  backgroundColor: MaterialStatePropertyAll(Colors.blue)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
              
                                  Text('Login with Facebook  '),
                                  Icon(Icons.facebook),
                                ],
                              ),
                            ),
                          ),
                          // Spacer(
                          //
                          // ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?"),
                              TextButton(
                                onPressed: () {
                                  viewModel.navigateToRegister();
                                  // Handle sign-up button press
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },);
  }
}
