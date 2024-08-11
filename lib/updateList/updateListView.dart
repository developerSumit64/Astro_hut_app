import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:api/constants/constantStyle.dart';
import 'package:url_launcher/url_launcher.dart'; // Ensure this file contains your custom styles

class UpdateListAgent extends StatefulWidget {
  @override
  _UpdateListAgentState createState() => _UpdateListAgentState();
}

class _UpdateListAgentState extends State<UpdateListAgent> {
  int _currentPage = 1;
  final int _logsPerPage = 10;

  // Sample detailed information
  final List<Map<String, String>> callLogs = [
    {
      "updated": "7015756525",
      "callStatus": "New client",
      "accountStatus": "Not Paid",
      "updatedAt": "05/08/2024 - 11:13:24",
      "name": "Ashwaraya",
      "city": "New Delhi",
      "gender": "Female",
      "customStatus": "Pending",
      "createdAt": "01/01/2024",
    },
    {
      "updated": "7015756525",
      "callStatus": "New client",
      "accountStatus": "Not Paid",
      "updatedAt": "05/08/2024 - 11:13:24",
      "name": "Ashwaraya",
      "city": "New Delhi",
      "gender": "Female",
      "customStatus": "Pending",
      "createdAt": "01/01/2024",
    },
    // Add more items as needed
  ];

  // Variable to hold the selected call log for detailed view
  Map<String, String>? selectedCallLog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Update List'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return FilterDialog();
                },
              );
            },
          ),
          PopupMenuButton<String>(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 3,
            onSelected: (String value) {
              print('Selected: $value');
            },
            itemBuilder: (BuildContext context) {
              return {'All Callers', 'Call Receiving', 'Add Contact', 'Dashboard', 'Call Logs', 'Agent Stats', 'Go to page '}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  onTap: () {
                    
                  },
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Paid: 342',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Total Not Paid: 1057',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(

              child: ListView.builder(

                itemCount: callLogs.length,
                itemBuilder: (context, index) {
                  final callLog = callLogs[index];
                  return Container(
                    decoration: containerdesign.decoration,
                    child: Card(
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12.withOpacity(0.05),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Row(
                          children: [
                            Text(
                              'Updated: ',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              ' ${callLog["updated"]}',
                              style: TextStyle(
                                color: Colors.black87,
                                letterSpacing: 1,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Call Status: ',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                  ),
                                ),
                                Text('${callLog["callStatus"]}'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Account Status: ',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                  ),
                                ),
                                Text('${callLog["accountStatus"]}'),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Updated At: ',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                  ),
                                ),
                                Text('${callLog["updatedAt"]}'),


                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.call, color: Colors.blue),
                                  onPressed: () async {
                                    const phoneNumber = '9084907266'; // Replace with the desired phone number
                                    final Uri url = Uri.parse('tel:$phoneNumber');

                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    } else {
                                      // Show an error message if the call cannot be made
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Could not launch $url')),
                                      );
                                    }
                                  },
                                ),


                                IconButton(
                                  icon: Icon(Icons.message, color: Colors.green),
                                  onPressed: () {
                                    // Message action
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.info, color: Colors.orange),
                                  onPressed: () {
                                    // Set the selected call log and show detailed page
                                    setState(() {
                                      selectedCallLog = callLog;
                                    });
                                    _showDetailedPage();
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        // trailing: Expanded(
                        //   child: SingleChildScrollView(
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         IconButton(
                        //           icon: Icon(Icons.call, color: Colors.blue),
                        //           onPressed: () {
                        //             // Call action
                        //           },
                        //         ),
                        //         IconButton(
                        //           icon: Icon(Icons.message, color: Colors.green),
                        //           onPressed: () {
                        //             // Message action
                        //           },
                        //         ),
                        //         IconButton(
                        //           icon: Icon(Icons.info, color: Colors.orange),
                        //           onPressed: () {
                        //             // Set the selected call log and show detailed page
                        //             setState(() {
                        //               selectedCallLog = callLog;
                        //             });
                        //             _showDetailedPage();
                        //           },
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            _buildPagination(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new entry action
        },
        child: Icon(Icons.add),
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
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
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
          ],
        ),
      ),
    );
  }

  void _showDetailedPage() {
    if (selectedCallLog == null) return;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: Colors.white,
          title: Text('Details'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle('Contact Details'),
                _buildDivider(),
                _buildDetailRow('Name:', selectedCallLog!['name'] ?? 'N/A'),
                _buildDetailRow('City:', selectedCallLog!['city'] ?? 'N/A'),
                _buildDetailRow('Gender:', selectedCallLog!['gender'] ?? 'N/A'),
                _buildDetailRow('Custom Status:', selectedCallLog!['customStatus'] ?? 'N/A'),
                _buildDetailRow('Created At:', selectedCallLog!['createdAt'] ?? 'N/A'),
                SizedBox(height: 16),
                _buildSectionTitle('Additional Info'),
                _buildDivider(),
                _buildDetailRow('Call Status:', selectedCallLog!['callStatus'] ?? 'N/A'),
                _buildDetailRow('Account Status:', selectedCallLog!['accountStatus'] ?? 'N/A'),
                _buildDetailRow('Updated At:', selectedCallLog!['updatedAt'] ?? 'N/A'),

              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('Close', style: TextStyle(color: Colors.orangeAccent)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.orangeAccent,
          letterSpacing: 1,
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              letterSpacing: 1,
              color: Colors.black45,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.orangeAccent,
    );
  }
}

class FilterDialog extends StatefulWidget {
  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  String? selectedClientType;
  String? selectedStatus;
  DateTime? selectedDateFrom;
  DateTime? selectedDateTo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 2,
      // icon: Icon(Icons.arrow_drop_down),
      shape: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(63),
          topRight: Radius.circular(63)),borderSide:
      BorderSide(color: Colors.black12)),
      title: Text('Filter',style: TextStyle(letterSpacing: 1,color: Colors.black87)),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDropdown(
              'Client Type',
              ['Client 1', 'Client 2'],
              selectedClientType,
                  (String? newValue) {
                setState(() {
                  selectedClientType = newValue;
                });
              },
            ),
            _buildDropdown(
              'Account Status',
              ['Status 1', 'Status 2'],
              selectedStatus,
                  (String? newValue) {
                setState(() {
                  selectedStatus = newValue;
                });
              },
            ),
            _buildDatePicker(
              'From Date',
              selectedDateFrom,
                  (DateTime? newDate) {
                setState(() {
                  selectedDateFrom = newDate;
                });
              },
            ),
            _buildDatePicker(
              'To Date',
              selectedDateTo,
                  (DateTime? newDate) {
                setState(() {
                  selectedDateTo = newDate;
                });
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text('Reset',style: TextStyle(color: Colors.orange,letterSpacing: 1)),
          onPressed: () {
            setState(() {
              selectedClientType = null;
              selectedStatus = null;
              selectedDateFrom = null;
              selectedDateTo = null;
            });
          },
        ),
        TextButton(
          child: Text('Apply',style: TextStyle(letterSpacing: 1,color: Colors.blue)),
          onPressed: () {
            Navigator.of(context).pop();
            // Apply filters to the list
          },
        ),
      ],
    );
  }

  Widget _buildDropdown(
      String label, List<String> items, String? selectedItem, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: selectedItem,
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDatePicker(
      String label, DateTime? selectedDate, ValueChanged<DateTime?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: selectedDate ?? DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                onChanged(pickedDate);
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                selectedDate != null
                    ? DateFormat.yMMMd().format(selectedDate)
                    : 'Select Date',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
