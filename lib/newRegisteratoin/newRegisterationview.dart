import 'package:api/constants/constantStyle.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  bool isWhatsAppNumber = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'User Registration',
              style: TextStyle(
                letterSpacing: 1,
                color:Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.file_copy_sharp),
          ),
          PopupMenuButton<String>(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 3,
            onSelected: (String value) {
              print('Selected: $value');
            },
            itemBuilder: (BuildContext context) {
              return {
                'All Callers',
                'Call Receiving',
                'Add Contact',
                'Dashboard',
                'Call Logs',
                'Agent Stats',
              }.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.orange.shade400],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Personal Details Section Header
              Text(
                '  Personal Details',
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Card(
                color: Colors.white,
                surfaceTintColor: Colors.white,
                margin: EdgeInsets.only(bottom: 16.0),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Name',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.mobile_friendly_outlined),
                          labelText: 'Mobile Number',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your mobile number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15),
                      SwitchListTile(
                        title: const Text(
                          'Is WhatsApp Number?',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        value: isWhatsAppNumber,
                        onChanged: (bool value) {
                          setState(() {
                            isWhatsAppNumber = value;
                          });
                        },
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.blue.withOpacity(0.5),
                        inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: Colors.grey.withOpacity(0.3),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.calendar_today),
                          labelText: 'Date of Birth',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your date of birth';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.access_time),
                          labelText: 'Time',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the time';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Location Section Header
              Text(
                '   Location',
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Card(
                color: Colors.white,
                surfaceTintColor: Colors.white,
                margin: EdgeInsets.only(bottom: 16.0),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.location_on),
                          labelText: 'Location',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your location';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Statuses Section Header
              Text(
                '  Statuses',
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Card(
                color: Colors.white,
                surfaceTintColor: Colors.white,

                margin: EdgeInsets.only(bottom: 16.0),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
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
                      SizedBox(height: 15),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
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
                      SizedBox(height: 15),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
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
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: kTextFormFieldDecoration.copyWith(
                          prefixIcon: Icon(Icons.comment),
                          labelText: 'Customer Status',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the customer status';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              SizedBox(
                width: size.width * 0.94,
                height: 45,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // Process data
                      }
                    },
                    style: roundedelevatedButtonStyle,
                    child: Text('Submit'),
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
