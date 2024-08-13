import 'package:flutter/material.dart';
import 'package:api/constants/constantStyle.dart';

class CallerHistoryViewKundli extends StatelessWidget {
  final List<Map<String, dynamic>> callHistory = [
    {
      'number': '9653533348',
      'agentName': 'Guruji',
      'accountStatus': 'Paid',
      'callStatus': '31. Call transfer to Guruji.',
      'time': '12/08/2024 - 18:52:57'
    },
    {
      'number': '9653533354',
      'agentName': 'Guruji',
      'accountStatus': 'Not Paid',
      'callStatus': '32. Call transfer to Rachna.',
      'time': '12/08/2024 - 15:58:42'
    },
    {
      'number': '9653533354',
      'agentName': 'Guruji',
      'accountStatus': 'Not Paid',
      'callStatus': '32. Call transfer to Rachna.',
      'time': '12/08/2024 - 15:55:24'
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFAC06), Colors.orange.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Caller History Screen',
          style: TextStyle(color: Colors.white, letterSpacing: 1),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: callHistory.length,
        itemBuilder: (context, index) {
          final call = callHistory[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: containerdesign.decoration,
              child: Card(
                color: Colors.white,
                surfaceTintColor: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.phone, color: Colors.blue, size: 20),
                                        SizedBox(width: 8),
                                        Text(
                                          'Number:',
                                          style: TextStyle(color: Colors.black45),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          call['number'],
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(Icons.person, color: Colors.green),
                                        SizedBox(width: 8),
                                        Text(
                                          'Agent Name:',
                                          style: TextStyle(color: Colors.black45),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          call['agentName'],
                                          style: TextStyle(color: Colors.black87),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Icon(Icons.call_merge, color: Colors.purple),
                              SizedBox(width: 8),
                              Text(
                                'Call Status:',
                                style: TextStyle(color: Colors.black45),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  call['callStatus'],
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Icon(Icons.access_time, color: Colors.grey),
                              SizedBox(width: 8),
                              Text(
                                'Time:',
                                style: TextStyle(color: Colors.black45),
                              ),
                              SizedBox(width: 8),
                              Text(
                                call['time'],
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 6,
                      right: 5,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: call['accountStatus'] == 'Paid'
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              call['accountStatus'] == 'Paid'
                                  ? Icons.check_circle
                                  : Icons.cancel,
                              color: Colors.white,
                              size: 10,
                            ),
                            SizedBox(width: 4),
                            Text(
                              call['accountStatus'].toString().toUpperCase(),
                              style: TextStyle(
                                fontSize: 5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
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
          );
        },
      ),
    );
  }
}
