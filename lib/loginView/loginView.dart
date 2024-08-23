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
  final _formKey = GlobalKey<FormState>();

  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.orange.shade300],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 2,
            iconTheme: IconThemeData(color: Colors.white),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              'Login',
              style: TextStyle(color: Colors.white, letterSpacing: 1),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/images/corner_orange.png',
                    width: MediaQuery.of(context).size.width / 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Form(
                    key: _formKey,
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
                              child: Text(
                                "Email - id",
                                style: TextStyle(
                                    letterSpacing: 1.5, color: Colors.black54),
                              )),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: kTextFormFieldDecoration,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              } else if (!RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                            onSaved: (value) => _email = value,
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    letterSpacing: 1.5, color: Colors.black54),
                              )),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            obscureText: true,
                            decoration: kTextFormFieldDecoration,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              } else if (value.length < 6) {
                                return 'Password must be at least 6 characters long';
                              }
                              return null;
                            },
                            onSaved: (value) => _password = value,
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              viewModel.navigateToForgget();
                            },
                            child: Text(
                              'Forgot Password ?',
                              style: TextStyle(
                                  color: Colors.redAccent.shade200),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                viewModel.navigateToFirstView();
                              }
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
                                backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Login with Facebook  '),
                                Icon(Icons.facebook),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                viewModel.navigateToRegister();
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
      },
    );
  }
}
