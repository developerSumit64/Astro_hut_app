import 'package:api/constants/constantStyle.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('User Registration', style: TextStyle(
              letterSpacing: 1,
              fontSize: 20
              // fontWeight: FontWeight.bold,
            ),),

          ],
        ),
        actions: [

          IconButton(onPressed: () {},
              icon: Icon(Icons.file_copy_sharp)),
          PopupMenuButton<String>(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 3,
            onSelected: (String value) {
              print('Selected: $value');
            },
            itemBuilder: (BuildContext context) {
              return {'All Callers', 'Call Receiving', 'Add Contact', 'Dashboard', 'Call Logs', 'Agent Stats',}
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                surfaceTintColor: Colors.white54,
                elevation: 2,
                color: Colors.grey.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        enabled: true,
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                        ),
                        decoration: kTextFormFieldDecoration.copyWith(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Name'
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.mobile_friendly_outlined),
                          labelText: 'Mobile Number',
                        ),
                      ),
                      SizedBox(height: 15,),
                      SwitchListTile(
                        title: const Text(
                          'Is WhatsApp Number?',
                          style: TextStyle(
                            color: Colors.black54,
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                        value: true,
                        onChanged: (bool value) {
                          // Handle the change
                        },
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.blue.withOpacity(0.5),
                        inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: Colors.grey.withOpacity(0.3),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      ),

                      SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
             decoration: kTextFormFieldDecoration.copyWith(
               prefixIcon: Icon(Icons.location_on),
               labelText: 'Location',
             ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        decoration:kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.calendar_today),
                          labelText: 'Date of Birth',
                        )
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.access_time),
                          labelText: 'Time',
                        ),
                      ),
                      SizedBox(height: 15,),
                      DropdownButtonFormField(

                        decoration: InputDecoration(
focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: Colors.black12, )),
                        fillColor: Colors.white,
                          filled: true,
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide( color: Colors.black12, ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: 'Gender',
                          labelStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.person_outline),
                        ),
                        items: [
                          DropdownMenuItem(child: Text('Male'), value: 'Male'),
                          DropdownMenuItem(child: Text('Female'), value: 'Female'),
                          DropdownMenuItem(child: Text('Other'), value: 'Other'),
                        ],
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 15,),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: Colors.black12, )),
                          fillColor: Colors.white,
                          filled: true,
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide( color: Colors.black12, ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: 'Account Status',
                          labelStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.person_outline),
                        ),
                        items: [
                          DropdownMenuItem(child: Text('Paid'), value: 'Paid'),
                          DropdownMenuItem(child: Text('Not Paid'), value: 'Not Paid'),
                        ],
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 15,),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: Colors.black12, )),
                          fillColor: Colors.white,
                          filled: true,
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide( color: Colors.black12, ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          labelText: 'Call Status',
                          labelStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.person_outline),
                        ),
                        items: [
                          DropdownMenuItem(child: Text('New client'), value: 'New client'),
                          DropdownMenuItem(child: Text('Existing client'), value: 'Existing client'),
                        ],
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        decoration:kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.comment),
                          labelText: 'Customer Status',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}