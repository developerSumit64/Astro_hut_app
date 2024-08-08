// import 'package:api/Profile/profileView.dart';
import 'package:api/constants/constantStyle.dart';
import 'package:api/profileViewScreen/profileViewScreenView.dart';
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
              letterSpacing: 1,
              // fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        // actions: [
        //
        //   IconButton(
        //     icon: Icon(Icons.check),
        //     onPressed: () {},
        //   ),
        // ],
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
                    // fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),),
                ],
              ),
              SizedBox(height: 12),
              TextFormField(
                 decoration: kTextFormFieldDecoration.copyWith(labelText: 'First name',
                  hintText: 'Bob',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),),

              ),
                // ),
              // ),
              SizedBox(height: 16),
              TextFormField(
                 decoration: kTextFormFieldDecoration.copyWith(
                  hintText: 'Randal',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  labelText: 'Last name',
                )
              ),
              SizedBox(height: 16),
              TextFormField(
                                 decoration: kTextFormFieldDecoration.copyWith(
                  hintText: 'Los Angeles',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green), labelText: 'Location',
                )
              ),
              SizedBox(height: 16),
              TextFormField(

                decoration: kTextFormFieldDecoration.copyWith(
                  hintText: '+48 800 700 600',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  labelText: 'Phone',),
              ),
              SizedBox(height: 16),
              TextFormField(

                decoration: kTextFormFieldDecoration.copyWith(
                  hintText: 'bob.randal@gmail.com',
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                labelText: 'Mail',),
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Studies',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.black12, // Enabled black border color
                      width: 1,
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,// Focused blue border colo258/369*-+

                      width: 1,
                    ),
                  ),
                ),
                items: [
                  DropdownMenuItem(child: Text('Study 1'), value: 'study1'),
                  DropdownMenuItem(child: Text('Study 2'), value: 'study2'),
                ],
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(

                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Profession',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.black12, // Enabled black border color
                      width: 1,
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,// Focused blue border colo258/369*-+

                      width: 1,
                    ),
                  ),
                ),
                items: [
                  DropdownMenuItem(child: Text('Profession 1'), value: 'profession1'),
                  DropdownMenuItem(child: Text('Profession 2'), value: 'profession2'),
                ],
                onChanged: (value) {
                  // Handle change
                },
              ),
              // Spacer(),
              SizedBox(
                height: 11,
              ),
              ElevatedButton(onPressed: () {

              },
                  style: roundedelevatedButtonStyle,
                  child: Text("Update Information")),
            ],
          ),
        ),
      ),
    );
  }
}