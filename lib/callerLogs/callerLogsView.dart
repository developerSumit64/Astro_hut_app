// import 'package:api/SpecificCallLogDetails/specificCallLogsDetailsViewModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../constants/constantStyle.dart';
import 'callerLogViewModel.dart';

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
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ViewModelBuilder<CallLogDetailViewModel>.reactive(
          viewModelBuilder: () => CallLogDetailViewModel(),
          builder: (context, viewModel, child) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildListItem(context, Icons.people, 'All Callers', Colors.blue, viewModel.NavigateTOAllCaller),
                  _buildListItem(context, Icons.call_received, 'Call Receiving', Colors.green, viewModel.navigateToCallReceiving),
                  _buildListItem(context, Icons.contact_phone, 'Add Contact', Colors.orange, viewModel.navigateToRegisterNewUser),
                  _buildListItem(context, Icons.dashboard, 'Dashboard', Colors.red, viewModel.NavigateTODashboard),
                  _buildListItem(context, Icons.call, 'Call Logs', Colors.purple, viewModel.NavigateTOAllCaller),
                  _buildListItem(context, Icons.bar_chart, 'Agent Stats', Colors.teal, viewModel.navigateToAgentView),
                  _buildListItem(context, Icons.arrow_forward, 'Go to page', Colors.brown, viewModel.NavigateTOAllCaller),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildListItem(BuildContext context, IconData icon, String text, Color iconColor, void Function() callback) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(text),
      onTap: () {
        callback();
        // Navigator.pop(context); // Close the bottom sheet after navigation
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CallLogDetailViewModel>.reactive(viewModelBuilder: () => CallLogDetailViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.orange.shade400],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              // backgroundColor: Colors.white,
              elevation: 2,
              iconTheme: IconThemeData(color: Colors.black),
              leading: IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text(
                'Caller Logs',
                style: TextStyle(letterSpacing: 1, color: Colors.white),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () => _showModalBottomSheet(context),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _buildSearchBar(),
                  Expanded(
                    child: _buildCallLogsList(viewModel),
                  ),
                  _buildPagination()
                ],
              ),
            ),
          );
        },);
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

  Widget _buildCallLogsList(CallLogDetailViewModel viewModel) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: _callLogs.length,
      itemBuilder: (context, index) {
        return _buildCallLogCard(_callLogs[index], viewModel );
      },
    );
  }

  Widget _buildCallLogCard(Map<String, String> log, CallLogDetailViewModel model) {
    return Container(
      decoration: containerdesign.decoration,
      child: GestureDetector(
        onTap: () {
model.NavigateTOCallLogDetailView();
        },
        child: Card(

          surfaceTintColor: Colors.white,
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 1),
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
      ),
    );
  }

  Widget _buildPagination() {
    int totalPages = 12; // Example total pages

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: _currentPage > 1
                      ? () {
                    setState(() {
                      _currentPage--;
                    });
                  }
                      : null,
                ),
                PopupMenuButton<int>(
                  onSelected: (int value) {
                    setState(() {
                      _currentPage = value;
                    });
                  },
                  itemBuilder: (BuildContext context) {
                    return List<PopupMenuEntry<int>>.generate(
                      totalPages,
                          (int index) {
                        return PopupMenuItem<int>(
                          value: index + 1,
                          child: Text('Page ${index + 1}'),
                        );
                      },
                    );
                  },
                  child: Text('Page $_currentPage of $totalPages'),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_right),
                  onPressed: _currentPage < totalPages
                      ? () {
                    setState(() {
                      _currentPage++;
                    });
                  }
                      : null,
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       icon: Icon(Icons.arrow_left),
            //       onPressed: _currentPage > 1
            //           ? () {
            //         setState(() {
            //           _currentPage--;
            //         });
            //       }
            //           : null,
            //     ),
            //     ...List.generate(totalPages, (index) {
            //       return GestureDetector(
            //         onTap: () {
            //           setState(() {
            //             _currentPage = index + 1;
            //           });
            //         },
            //         child: Container(
            //           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            //           margin: EdgeInsets.symmetric(horizontal: 2),
            //           decoration: BoxDecoration(
            //             color: _currentPage == index + 1
            //                 ? Colors.blueAccent.withOpacity(0.7)
            //                 : Colors.white,
            //             borderRadius: BorderRadius.circular(8),
            //             border: Border.all(color: Colors.blue.shade200),
            //           ),
            //           child: Text(
            //             '${index + 1}',
            //             style: TextStyle(
            //               color: _currentPage == index + 1 ? Colors.white : Colors.blue,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ),
            //       );
            //     }),
            //     IconButton(
            //       icon: Icon(Icons.arrow_right),
            //       onPressed: _currentPage < totalPages
            //           ? () {
            //         setState(() {
            //           _currentPage++;
            //         });
            //       }
            //           : null,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }


}
