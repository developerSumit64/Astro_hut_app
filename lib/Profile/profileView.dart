import 'package:flutter/material.dart';

import 'edit_profile.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  bool isDarkMode = false;
  bool showComments = true;
  double fontSize = 14.0;
  double pageZoom = 75.0;
  double brightness = 50.0;

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.settings,),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Settings',style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios,size: 20,)
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.details),
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Plan Details',style: TextStyle(fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_forward_ios,size: 20,)
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('User management',style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios,size: 20,)
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Activity',style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios,size: 20,)
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Privacy',style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios,size: 20,)
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Information',style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios,size: 20,)
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Log out',style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios,size: 20,)
                  ],
                ),
                onTap: (){},
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: _showBottomSheet,
                  icon: const Icon(Icons.more_vert_outlined))
            ],
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/icons/sumit.png'),
                    ),
                    Column(
                      children: [
                        Text('Bob Randal', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        Text('Economic, Los Angeles, USA',style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      )),
                      backgroundColor: const MaterialStatePropertyAll(Colors.blueAccent)
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileEditApp(),));
                  },
                  child: const Text('Edit profile',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('PREFERENCES', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('NOTIFICATION', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('NETWORK', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            ListTile(
              title: const Text('Language',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
              trailing: DropdownButton<String>(
                value: 'English',
                onChanged: (String? newValue) {
                  setState(() {
                    // Update language value
                  });
                },
                items: <String>['English', 'Spanish', 'French']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SwitchListTile(
              title: const Text('Dark mode',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
              value: isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  isDarkMode = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Show comments',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
              value: showComments,
              onChanged: (bool value) {
                setState(() {
                  showComments = value;
                });
              },
            ),
            ListTile(
              title: const Text('Font size',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
              subtitle: Slider(
                value: fontSize,
                min: 10,
                max: 30,
                divisions: 20,
                label: fontSize.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    fontSize = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Page zoom',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
              trailing: DropdownButton<double>(
                value: pageZoom,
                onChanged: (double? newValue) {
                  setState(() {
                    pageZoom = newValue!;
                  });
                },
                items: <double>[50.0, 75.0, 100.0, 125.0]
                    .map<DropdownMenuItem<double>>((double value) {
                  return DropdownMenuItem<double>(
                    value: value,
                    child: Text('$value%'),
                  );
                }).toList(),
              ),
            ),
            ListTile(
              title: const Text('Brightness',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
              subtitle: Slider(
                value: brightness,
                min: 0,
                max: 100,
                divisions: 100,
                label: brightness.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    brightness = value;
                  });
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Clear cache',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
              trailing: const Icon(Icons.arrow_forward_ios,size: 20,),
              onTap: () {
                // Implement clear cache functionality
              },
            ),
            ListTile(
              title: const Text('Delete browsing history',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
              trailing: const Icon(Icons.arrow_forward_ios,size: 20),
              onTap: () {
                // Implement delete browsing history functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}
