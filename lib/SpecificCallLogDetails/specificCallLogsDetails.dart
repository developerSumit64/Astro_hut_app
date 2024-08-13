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
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ Color(0xFFFFAC06),
                Colors.orange.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // title: const Text(
        //   'Kundli Page',
        //   style: TextStyle(color: Colors.white, letterSpacing: 1),
        // ),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text('Call Log Detail',style: TextStyle(color: Colors.white, letterSpacing: 1),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shadowColor: Colors.blue,
            surfaceTintColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            elevation: 8,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection('Call Log Details', Icons.call, [
                    _buildDetailRow('Call From:', callLog['callFrom']!),
                    _buildDetailRow('Call Time:', callLog['callTime']!),
                    _buildDetailRow('Call Duration:', callLog['callDuration']!),
                  ]),
                  SizedBox(height: 16),
                  _buildSection('Call Status', Icons.info, [
                    _buildDetailRow('Status:', callLog['callStatus']!),
                  ]),
                  SizedBox(height: 16),
                  _buildSection('Additional Info', Icons.info_outline, [
                    _buildDetailRow('Agent Name:', callLog['agentName']!),
                    _buildDetailRow('Agent Number:', callLog['agentNumber']!.isEmpty ? 'N/A' : callLog['agentNumber']!),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, IconData icon, List<Widget> details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.orangeAccent),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        _buildDivider(),
        ...details,
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.orangeAccent,
      thickness: 1,
      height: 20,
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.label, color: Colors.black45),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
