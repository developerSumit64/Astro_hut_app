
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constantStyle.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> with SingleTickerProviderStateMixin {
  int state = 0;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _regnoController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  // late AnimationController _animationController;
  // late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // _animationController = AnimationController(
    //   duration: Duration(milliseconds: 2),
    //   vsync: this,
    // )..forward();
    //
    // _animation = CurvedAnimation(
    //   parent: _animationController,
    //   curve: Curves.linear,
    // );
  }

  @override
  void dispose() {
  //   _animationController.dispose();
  //   super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // shadowColor: Colors.green.shade100,
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
        elevation: 5.0,
        title: Text('Reset Your Password',style: TextStyle(
          color: Colors. white,
          shadows: [
            Shadow(
              offset: Offset(1.0, 1.0),
              blurRadius: 2.0,
              color: Color.fromARGB(111, 0, 0, 0),
            ),
          ],
        )),
      ),
      body:

      SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/background/MDUBAck.jpeg",
              fit: BoxFit.cover,
              height: size.height,
            ),Padding(
                padding: const EdgeInsets.only(top:80),
                child: Column(
                    children: [

                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/background/forgetpasslogo.jpeg"),
                          ),
                        ),
                      ),




                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Forgot Your Password ",
                              style: TextStyle(
                                shadows: [
                                  Shadow(
                                    offset: Offset(1.0, 1.2),
                                    blurRadius: 2.0,
                                    color: Colors.green,
                                  ),
                                ],
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.blueAccent.shade400,
                                fontSize: 21,
                                wordSpacing: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.all(Radius.circular(22)),
                                // gradient: LinearGradient(
                                //   colors: [
                                //     Colors.blue.shade50,
                                //     Colors.blue.shade200,
                                //   ],
                                // ),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 22),
                                      Text(
                                        "Enter your Registration number and we will send you an OTP to your registered mobile number to reset your password",
                                        style: TextStyle(color: Colors.black45),
                                        textAlign: TextAlign.center,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(height: 58,
                                          child: TextFormField(
                                            controller: _regnoController,
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
                                      state == 1
                                          ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(height: 58,
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
                                      )
                                          : Container(),
                                      SizedBox(
                                        height: 11,
                                      ),
                                      SizedBox(
                                        width: 310,
                                        child: state == 0
                                            ?
                                        Container(

                                          decoration: containerdesign.decoration,
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(12),
                                            onTap: () {
                                              if (_formKey.currentState!.validate()) {
                                                setState(() {
                                                  state = 1;
                                                });

                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(content: Text('Processing Data')),
                                                );

                                                // Navigator.of(context).push(_createRoute(OtpVerification()));
                                                // Here you can add the logic to request OTP
                                              }
                                            },

                                            child: Container(

                                              padding: EdgeInsets.symmetric(vertical: 15),
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Request OTP',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                            : InkWell(
                                          borderRadius: BorderRadius.circular(12),
                                          onTap: () {
                                            if (_formKey.currentState!.validate()) {
                                              setState(() {
                                                state = 1;
                                              });

                                              ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBar(content: Text('Processing Data')),
                                              );

                                              // Navigator.of(context).push(_createRoute(passchange()));
                                              // Here you can add the logic to request OTP
                                            }
                                          },

                                          child: Container(
                                            decoration: containerdesign.decoration,
                                            padding: EdgeInsets.symmetric(vertical: 15),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Submit OTP',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 11,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: TextButton(
                                          onPressed: () {
                                            // Add resend OTP logic here
                                          },
                                          child: Text(
                                            "Resend OTP ?",
                                            style: TextStyle(
                                              color: Colors.black38,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],

                      ),]
                )),],
        ),
      ),
    );

  }

  // Route _createRoute(Widget page) {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => page,
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(1.0, 0.0); // Slide from right to left
  //       const end = Offset.zero;
  //       const curve = Curves.easeInOut;
  //
  //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //       var offsetAnimation = animation.drive(tween);
  //
  //       return   Transform.scale(
  //         scale: animation.value,
  //         child: child,
  //       );
  //     },
  //   );
  // }
}
