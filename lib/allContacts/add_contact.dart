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
              fontWeight: FontWeight.bold,
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: IconButton(onPressed: () {},
                  icon: Icon(Icons.more_vert_outlined)),
            ),
            IconButton(onPressed: () {},
                icon: Icon(Icons.file_copy_sharp))
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        enabled: true,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
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
                        decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                          prefixIcon: Icon(Icons.mobile_friendly_outlined),
                          labelText: 'Mobile Number',
                        ),
                      ),
                      SizedBox(height: 15,),
                      SwitchListTile(
                        title: Text('Is WhatsApp Number?',style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),),
                        value: true,
                        onChanged: (bool value) {
                          // Handle the change
                        },
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                          prefixIcon: Icon(Icons.location_on),
                          labelText: 'Location',
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                          prefixIcon: Icon(Icons.calendar_today),
                          labelText: 'Date of Birth',
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                          prefixIcon: Icon(Icons.access_time),
                          labelText: 'Time',
                        ),
                      ),
                      SizedBox(height: 15,),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          labelText: 'Gender',
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
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          labelText: 'Account Status',
                          prefixIcon: Icon(Icons.account_balance_wallet),
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
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          labelText: 'Call Status',
                          prefixIcon: Icon(Icons.call),
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
                        decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
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
