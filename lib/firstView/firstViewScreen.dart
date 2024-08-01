import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstViewScreen extends StatefulWidget {
  const FirstViewScreen({super.key});

  @override
  State<FirstViewScreen> createState() => _FirstViewScreenState();
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Handle user icon press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DashboardCard(
              title: 'All Contacts',
              color: Colors.lightBlue,
              icon: Icons.contacts,
              onTap: () {
                // Navigate to All Contacts screen
              },
            ),
            DashboardCard(
              title: 'Call Receiving',
              color: Colors.green,
              icon: Icons.call_received,
              onTap: () {
                // Navigate to Call Receiving screen
              },
            ),
            DashboardCard(
              title: 'Call Logs',
              color: Colors.green,
              icon: Icons.call,
              onTap: () {
                // Navigate to Call Logs screen
              },
            ),
            DashboardCard(
              title: 'Agent Stats',
              color: Colors.orange,
              icon: Icons.assessment,
              onTap: () {
                // Navigate to Agent Stats screen
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle add button press
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final VoidCallback onTap;

  DashboardCard({
    required this.title,
    required this.color,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.white, size: 40),
              SizedBox(width: 16.0),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}