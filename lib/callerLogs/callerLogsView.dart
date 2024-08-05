import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constantStyle.dart';

class CallerLogsView extends StatefulWidget {
  const CallerLogsView({super.key});

  @override
  State<CallerLogsView> createState() => _CallerLogsViewState();
}

class _CallerLogsViewState extends State<CallerLogsView> {
  final List<Map<String, String>> _callLogs = [
    {
      "callFrom": "9096322764",
      "agentName": "Sandeep Jharkhand",
      "agentNumber": "09653533349",
      "callDate": "02/08/2024",
      "callTime": "12:05:05"
    },
    {
      "callFrom": "9096322764",
      "agentName": "Sidhu Kalinga",
      "agentNumber": "09653533349",
      "callDate": "02/08/2024",
      "callTime": "12:02:15"
    },
    {
      "callFrom": "9528786003",
      "agentName": "Mahant Satish Das",
      "agentNumber": "09350767255",
      "callDate": "02/08/2024",
      "callTime": "11:51:47"
    },
    {
      "callFrom": "9890088538",
      "agentName": "Pooja Girod",
      "agentNumber": "09350767255",
      "callDate": "02/08/2024",
      "callTime": "11:41:19"
    },
  ];

  int _currentPage = 1;
  final int _logsPerPage = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Caller Logs',
          style: TextStyle(letterSpacing: 1, color: Colors.black),
        ),
        actions: [
          PopupMenuButton<String>(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 3,
            onSelected: (String value) {
              print('Selected: $value');
            },
            itemBuilder: (BuildContext context) {
              return {'All Callers', 'Call Receiving', 'Add Contact', 'Dashboard', 'Call Logs', 'Agent Stats','Go to page '}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
            icon: Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _buildSearchBar(),
            Expanded(
              child: _buildCallLogsList(),
            ),
            _buildPagination()
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 8),
      child: TextField(

        decoration: InputDecoration(
        fillColor: Colors.white,
          
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.black12.withOpacity(0.05)),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(10.0),
        ),
      ),
    );
  }

  Widget _buildCallLogsList() {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: _callLogs.length,
      itemBuilder: (context, index) {
        return _buildCallLogCard(_callLogs[index]);
      },
    );
  }

  Widget _buildCallLogCard(Map<String, String> log) {
    return Container(
      decoration: containerdesign.decoration,
      child: Card(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 8),
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black12.withOpacity(0.05)),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(32),bottomRight: Radius.circular(32))),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/profile.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 32), // Added space for the agent name container
                        Row(
                          children: [
                            Text(
                              'Call From: ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              log['callFrom']!,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                fontSize: 15,
                                wordSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'Agent Number: ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              log['agentNumber']!,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'Call Date: ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              log['callDate']!,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'Call Time: ',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              log['callTime']!,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
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
            // Positioned(
            //   top: 8,
            //   left: 70,
            //   right: 16,
            //   child: Container(
            //     padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            //     decoration: BoxDecoration(
            //       color: Colors.blue,
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: Text(
            //       log['agentName']!,
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              top: 7,
              left: 68,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  log['agentName']!,
                  style: TextStyle(
                    fontSize: 13.5,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 7,
              right: 16,
              child: Row(
                children: [
                  Icon(Icons.call, color: Colors.green),
                  SizedBox(width: 18),
                  FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPagination() {
    return SingleChildScrollView(
       scrollDirection: Axis.horizontal,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(9, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: _currentPage == index + 1 ? Colors.blueAccent.withOpacity(0.7) : Colors.white,
                side: BorderSide(color: Colors.blue.shade200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: _currentPage == index + 1 ? Colors.white : Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  _currentPage = index + 1;
                });
              },
            ),
          );
        }),
      ),
    );
  }
}
