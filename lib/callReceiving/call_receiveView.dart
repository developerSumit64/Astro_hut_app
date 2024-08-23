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
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.orange.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          'Go Back',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // Image.asset('assets/icons/nocallfound.png',height: 50,)
              Icon(Icons.call_end_outlined,color: Colors.red,size: 35),
              Text('No Call Found',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 20,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}