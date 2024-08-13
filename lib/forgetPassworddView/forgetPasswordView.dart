import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api/constants/constantStyle.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  int state = 0;
  final _formKey = GlobalKey<FormState>();

  // Change controller name from _regnoController to _mobileEmailController
  final TextEditingController _mobileEmailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.orange.shade400],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Reset Your Password',
          style: TextStyle(color: Colors.white, letterSpacing: 1),
        ),
        // iconTheme: const IconThemeData(color: Colors.white),
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
            Column(
              children: [
                // Container(
                //   height: 150,
                //   width: 200,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       image: AssetImage("assets/background/forgetpasslogo.jpeg"),
                //     ),
                //   ),
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Your Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Color(0xFFfb1530), // Correct format for the color
                        fontSize: 21,
                        wordSpacing: 1,
                      ),
                    )
                    ,SizedBox(height: 22),
                    Text(
                      "Enter your Registration number and we will send you an OTP to your registered mobile number to reset your password",
                      style: TextStyle(color: Colors.deepOrange.shade300),
                      textAlign: TextAlign.center,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 18,right: 18,left: 18,top: 45),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFFFFAC06),

                          borderRadius: BorderRadius.all(Radius.circular(22)),
                        ),
                        child: Column(
                          children: [
                            // SizedBox(height: 22),

                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        height: 58,
                                        child: TextFormField(
                                          controller: _mobileEmailController,
                                          decoration: kTextFormFieldDecoration.copyWith(
                                            hintText: "Mobile Number / Email id",
                                            prefixIcon: Icon(
                                              Icons.format_list_numbered,
                                              color: Colors.blue.shade300,
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter your Mobile number';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                    if (state == 1)
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 58,
                                          child: TextFormField(
                                            controller: _otpController,
                                            decoration: kTextFormFieldDecoration.copyWith(
                                              hintText: "Enter OTP",
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.blue.shade300,
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Please enter the OTP';
                                              } else if (value.length != 6) {
                                                return 'OTP must be 6 digits';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    SizedBox(height: 11),
                                    SizedBox(
                                      width: 310,
                                      child: state == 0
                                          ?      SizedBox(
                                        width: 567,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              state = 1;
                                            });

                                            // viewModel.navigateToRegister();
                                            // Handle register action
                                          },
                                          style: elevatedButtonStyle.copyWith(
                                            side: MaterialStatePropertyAll(BorderSide(color: Colors.white60)),
                                          ),
                                          child: Text('Request OTP',style: TextStyle(fontSize: 14,letterSpacing: 1,wordSpacing: 1)),
                                        ),
                                      )
                                          :
                                      SizedBox(
                                        width: 567,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // viewModel.navigateToRegister();
                                            // Handle register action
                                          },
                                          style: elevatedButtonStyle.copyWith(
                                            side: MaterialStatePropertyAll(BorderSide(color: Colors.white60)),
                                          ),
                                          child: Text('Submit OTP',style: TextStyle(fontSize: 14,letterSpacing: 1,wordSpacing: 1)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 11),
                                    Align(
                                      alignment: Alignment.center,
                                      child: TextButton(
                                        onPressed: () {
                                          // Add resend OTP logic here
                                        },
                                        child: Text(
                                          "Resend OTP ?",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
