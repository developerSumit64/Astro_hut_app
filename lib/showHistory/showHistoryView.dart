import 'package:flutter/material.dart';

class ShowHistoryView extends StatefulWidget {
  @override
  _ShowHistoryViewState createState() => _ShowHistoryViewState();
}

class _ShowHistoryViewState extends State<ShowHistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Go back to the previous screen
          },
        ),

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
        title: const Text(
          'History View',
          style: TextStyle(color: Colors.white, letterSpacing: 1),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            // TabBar
            Container(
              color: Colors.white,
              child: TabBar(
                tabs: const [
                  Tab(text: 'Liked'),
                  Tab(text: 'Not Liked'),
                ],
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.orange,
              ),
            ),
            // Expanded TabBarView to fill remaining space
            Expanded(
              child: TabBarView(
                children: [
                  // Content for the "Liked" tab
                  ListView(
                    children: [
                      Text("Liked Content 1"),
                      Text("Liked Content 2"),
                      // Add more items here
                    ],
                  ),
                  // Content for the "Not Liked" tab
                  ListView(
                    children: [
                      Text("Not Liked Content 1"),
                      Text("Not Liked Content 2"),
                      // Add more items here
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
