import 'package:flutter/material.dart';

class CallLogDetailView extends StatefulWidget {
  const CallLogDetailView({super.key});

  @override
  State<CallLogDetailView> createState() => _CallLogDetailViewState();
}

class _CallLogDetailViewState extends State<CallLogDetailView> {
  final Map<String, String> callLog = {
    "callFrom": "6395255737",
    "callTime": "20:51:34",
    "callDuration": "0 sec",
    "callStatus": "MISSED",
    "agentName": "abc",
    "agentNumber": ""
  };

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        title: Text('Call Log Detail'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
   shadowColor: Colors.blue,
            surfaceTintColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            elevation: 1,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Call Log Details'),
                  _buildDivider(),
                  _buildDetailRow('Call From:', callLog['callFrom']!),
                  _buildDetailRow('Call Time:', callLog['callTime']!),
                  _buildDetailRow('Call Duration:', callLog['callDuration']!),
                  SizedBox(height: 16),
                  _buildSectionTitle('Call Status'),
                  _buildDivider(),
                  _buildDetailRow('Status:', callLog['callStatus']!),
                  SizedBox(height: 16),
                  _buildSectionTitle('Additional Info'),
                  _buildDivider(),
                  _buildDetailRow('Agent Name:', callLog['agentName']!),
                  _buildDetailRow('Agent Number:', callLog['agentNumber']!.isEmpty ? 'N/A' : callLog['agentNumber']!),
                ],
              ),
            ),
          ),
        ),
      ),
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

  Widget _buildDivider() {
    return Divider(
      color: Colors.orangeAccent,
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
}


