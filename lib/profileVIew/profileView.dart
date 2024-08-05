import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Profile Page',
          style: TextStyle(letterSpacing: 1, color: Colors.black),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Profile picture
          CircleAvatar(
          radius: 50,
          backgroundColor: Colors.transparent,
          child: ClipOval(
            child: Image.asset(
              "assets/images/profile.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        // ),backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with user profile picture URL
            ),
            const SizedBox(height: 16),
            // User name
            const Text(
              'Aacharya Anirudh Ji',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Text color
              ),
            ),
            const SizedBox(height: 8),
            // User email
            // const Text(
            //   'panditji@example.com',
            //   style: TextStyle(
            //     fontSize: 16,
            //     color: Colors.grey,
            //   ),
            // ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Call_agent",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            const SizedBox(height: 2),
            // Options Card
           Divider(),

            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildOptionCard(
                    icon: Icons.calendar_today,
                    title: 'Appointments',
                    onTap: () {
                      // Navigate to appointments page
                    },
                  ),
                  _buildOptionCard(
                    icon: Icons.star,
                    title: 'Ratings & Reviews',
                    onTap: () {
                      // Navigate to ratings & reviews page
                    },
                  ),
                  _buildOptionCard(
                    icon: Icons.favorite,
                    title: 'Favorite Services',
                    onTap: () {
                      // Navigate to favorite services page
                    },
                  ),
                  _buildOptionCard(
                    icon: Icons.privacy_tip,
                    title: 'Privacy Policy',
                    onTap: () {
                      // Navigate to privacy policy page
                    },
                  ),
                  _buildOptionCard(
                    icon: Icons.help,
                    title: 'Help & Support',
                    onTap: () {
                      // Navigate to help & support page
                    },
                  ),
                  _buildOptionCard(
                    icon: Icons.info,
                    title: 'About Us',
                    onTap: () {
                      // Navigate to about us page
                    },
                  ),
                  _buildOptionCard(
                    icon: Icons.settings,
                    title: 'Settings',
                    onTap: () {
                      // Navigate to settings page
                    },
                  ),
                  _buildOptionCard(
                    icon: Icons.exit_to_app,
                    title: 'Logout',
                    onTap: () {
                      // Handle logout
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.blueAccent.withOpacity(0.1),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 1.0,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.deepPurple, // Icon color
        ),
        title: Text(title),
        onTap: onTap,
      ),
    );
  }
}
