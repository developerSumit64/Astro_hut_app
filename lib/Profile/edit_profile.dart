import 'package:api/Profile/profileView.dart';
import 'package:flutter/material.dart';

class ProfileEditApp extends StatefulWidget {
  const ProfileEditApp({super.key});

  @override
  State<ProfileEditApp> createState() => _ProfileEditApp();
}

class _ProfileEditApp extends State<ProfileEditApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileEditScreen(),
    );
  }
}

class ProfileEditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSettings(),));
            },
                icon: Icon(Icons.arrow_back_ios_new,size: 20,)),
            Text('Edit Profile',style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/icons/sumit.png'),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text('Public Information',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),),
                ],
              ),
              SizedBox(height: 12),
              TextFormField(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  labelText: 'First name',
                  hintText: 'Bob',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  labelText: 'Last name',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  hintText: 'Randal',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: 'Location',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  hintText: 'Los Angeles',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  labelText: 'Phone',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  hintText: '+48 800 700 600',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  labelText: 'Mail',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  hintText: 'bob.randal@gmail.com',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  labelText: 'Studies',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(child: Text('Study 1'), value: 'study1'),
                  DropdownMenuItem(child: Text('Study 2'), value: 'study2'),
                ],
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  labelText: 'Profession',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(child: Text('Profession 1'), value: 'profession1'),
                  DropdownMenuItem(child: Text('Profession 2'), value: 'profession2'),
                ],
                onChanged: (value) {
                  // Handle change
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
