import 'package:flutter/material.dart';

class CallReceiveView extends StatefulWidget {
  const CallReceiveView({super.key});

  @override
  State<CallReceiveView> createState() => _CallReceiveViewState();
}

class _CallReceiveViewState extends State<CallReceiveView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Go Back',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset('assets/icons/nocallfound.png',height: 50,),
            Text('No Call Found',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 20,
            ),)
          ],
        ),
      ),
    );
  }
}
