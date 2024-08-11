import 'package:api/constants/constantStyle.dart';
import 'package:api/editProfile/editProfileView.dart';
import 'package:flutter/material.dart';

// import 'edit_profile.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  bool isDarkMode = false;
  String languageValue='English';
  bool showComments = true;
  double fontSize = 14.0;
  double pageZoom = 75.0;
  double brightness = 50.0;

  void _showBottomSheet() {

    showModalBottomSheet(
    elevation: 2,
      backgroundColor: Colors.white,

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
                    const Text('Settings',style: TextStyle(
                    letterSpacing: 1,
                      color: Colors.black87,
                    )),
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
                    Text('Plan Details',style: TextStyle( letterSpacing: 1,
                      color: Colors.black87,),),
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
                    const Text('User management',style: TextStyle( letterSpacing: 1,
                      color: Colors.black87,)),
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
                    const Text('Activity',style: TextStyle( letterSpacing: 1,
                      color: Colors.black87,)),
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
                    const Text('Privacy',style: TextStyle( letterSpacing: 1,
                      color: Colors.black87,)),
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
                    const Text('Information',style: TextStyle( letterSpacing: 1,
                      color: Colors.black87,)),
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
                    const Text('Log out',style: TextStyle( letterSpacing: 1,
                      color: Colors.black87,)),
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
                        Text('Bob Randal', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                        Text('    Economic, Los Angeles, USA',style: TextStyle(
                          color: Colors.black45,
                          // fontWeight: FontWeight.bold,
                        )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileEditApp(),));
                  },style: roundedelevatedButtonStyle,
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
                Text('PREFERENCES', style: TextStyle(fontSize: 16,letterSpacing: 1, )),
                Text('NOTIFICATION', style: TextStyle(fontSize: 16,letterSpacing: 1)),
                Text('NETWORK', style: TextStyle(fontSize: 16,letterSpacing: 1 )),
              ],
            ),
            ListTile(
              title: const Text('Language',style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Colors.black45,
              )),
              trailing: DropdownButton<String>(
                value: languageValue,
                onChanged: (String? newValue) {
                  setState(() {
                    languageValue=newValue!;
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
              title: const Text(
                'Dark mode',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  isDarkMode = value;
                });
              },
              activeColor: Colors.blue,
              activeTrackColor: Colors.blueAccent.withOpacity(0.5),
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.grey.withOpacity(0.3),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            ),

            SwitchListTile(
              title: const Text(
                'Show comments',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: showComments,
              onChanged: (bool value) {
                setState(() {
                  showComments = value;
                });
              },
              activeColor: Colors.blue,
              activeTrackColor: Colors.blueAccent.withOpacity(0.5),
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.grey.withOpacity(0.3),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            ),

            ListTile(
              title: const Text(
                'Font size',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SliderTheme(
                        data: SliderThemeData(
                          activeTrackColor: Colors.blueAccent,
                          inactiveTrackColor: Colors.blueAccent.withOpacity(0.3),
                          trackHeight: 4.0,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                          thumbColor: Colors.blue,
                          overlayColor: Colors.blue.withOpacity(0.2),
                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                          valueIndicatorColor: Colors.blueAccent,
                          valueIndicatorTextStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        child: Slider(
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
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      fontSize.round().toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ListTile(
              title: const Text('Page zoom',style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Colors.black45,
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
              title: const Text(
                'Brightness',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SliderTheme(
                        data: SliderThemeData(
                          activeTrackColor: Colors.blueAccent,
                          inactiveTrackColor: Colors.blueAccent.withOpacity(0.3),
                          trackHeight: 4.0,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                          thumbColor: Colors.blue,
                          overlayColor: Colors.blue.withOpacity(0.2),
                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                          valueIndicatorColor: Colors.blueAccent,
                          valueIndicatorTextStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        child: Slider(
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
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      '${brightness.round()}%',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Divider(),
            ListTile(
              title: const Text('Clear cache',style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Colors.black45,
              )),
              trailing: const Icon(Icons.arrow_forward_ios,size: 20,),
              onTap: () {
                // Implement clear cache functionality
              },
            ),
            ListTile(
              title: const Text('Delete browsing history',style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Colors.black45
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