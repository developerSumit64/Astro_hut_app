import 'package:api/constants/constantStyle.dart';
import 'package:api/firstView/firsrViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FirstViewScreen extends StatefulWidget {
  const FirstViewScreen({super.key});

  @override
  State<FirstViewScreen> createState() => _FirstViewScreenState();
}

class _FirstViewScreenState extends State<FirstViewScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<FirstViewModel>.reactive(
      viewModelBuilder: () => FirstViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            title: Text('Dashboard', style: TextStyle(color: Colors.white,letterSpacing: 1, fontWeight: FontWeight.normal,)),
            actions: [
              IconButton(
                icon: Icon(Icons.person_pin_outlined, color: Colors.white),
                onPressed: () {
                  viewModel.navigateToProfileView();
                },
              ),
            ],
            iconTheme: IconThemeData(color: Colors.white),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.orange.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                DashboardCard(


                  title: 'All Contacts',
                  color: Colors.white,
                  image: "assets/images/img_6.png",
                  onTap: () {
                    viewModel.navigateToAllContacts();
                  },
                ),
                DashboardCard(
                  title: 'Call Receiving',
                  color: Colors.white,

                  image: "assets/images/img_5.png",
                  onTap: () {
                    viewModel.navigateToCallReceiving();
                  },
                ),
                DashboardCard(
                  title: 'Call Logs',
                  color: Colors.white,
                  image: "assets/images/img.png",
                  onTap: () {
                    viewModel.navigateToCallLogs();
                  },
                ),
                DashboardCard(
                  title: 'Agent Stats',
                  color: Colors.white,
                  image: "assets/images/img_3.png",
                  onTap: () {
                    viewModel.navigateToAgentView();
                  },
                ),
                Spacer(),
                Container(
                  width: size.width * 0.94,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      viewModel.navigateToRegisterNewUser();
                    },
                    style: elevatedButtonStyle,
                    child: Text("Register New User ?", style: TextStyle(letterSpacing: 1)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: color,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      elevation: 5,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              image,
              width: 100,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0,),
                child: Text(
                  title,
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.black87,
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
