import 'package:api/constants/constantStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstViewScreen extends StatefulWidget {
  const FirstViewScreen({super.key});

  @override
  State<FirstViewScreen> createState() => _FirstViewScreenState();
}

class _FirstViewScreenState extends State<FirstViewScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard', style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.green),
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
              color: Colors.white,
              image: "assets/background/contactimages.png",
              onTap: () {
                // Navigate to All Contacts screen
              },
            ),
            DashboardCard(
              title: 'Call Receiving',
              color: Colors.white,
              image: "assets/background/contactimages.png",
              onTap: () {
                // Navigate to Call Receiving screen
              },
            ),
            DashboardCard(
              title: 'Call Logs',
              color: Colors.white,
              image: "assets/background/contactimages.png",
              onTap: () {
                // Navigate to Call Logs screen
              },
            ),
            DashboardCard(
              title: 'Agent Stats',
              color: Colors.white,
              image: "assets/background/contactimages.png",
              onTap: () {
                // Navigate to Agent Stats screen
              },
            ),
            SizedBox(
              height: size.height * 0.29,
            ),
            Container(
              width: size.width * 0.94,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: elevatedButtonStyle,
                child: Text("Register New User ?", style: TextStyle(letterSpacing: 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final Color color;
  final String image;
  final VoidCallback onTap;

  const DashboardCard({
    required this.title,
    required this.color,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.7,
      shadowColor: Colors.green,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.transparent)),
      color: color,
       surfaceTintColor: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 11.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width * 0.35,
                height: 80, // adjust height as necessary
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
