import 'package:api/agentView/agentViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Agent {
  final String name;
  final String number;
  final String role;

  Agent({required this.name, required this.number, required this.role});
}

class AgentView extends StatefulWidget {
  const AgentView({super.key});

  @override
  State<AgentView> createState() => _AgentViewState();
}

class _AgentViewState extends State<AgentView> {
  final List<Agent> agents = [
    Agent(name: 'Sanjay Sharma', number: '9813382163', role: 'call_agent'),
    Agent(name: 'Akshay Singh', number: '9466634594', role: 'call_agent'),
    Agent(name: 'Jai Maa Gange Trust', number: '8168132317', role: 'call_agent'),
    Agent(name: 'Rachna Bhardwaj ', number: '9653533350', role: 'call_agent'),
    Agent(name: 'Guruji Orignal', number: '9653533351', role: 'call_agent'),
    Agent(name: 'Archana Devi', number: '9306426771', role: 'call_agent'),
    Agent(name: 'Gaurav Jind ', number: '9971079999', role: 'call_agent'),
    Agent(name: 'Sanjay Sharma', number: '9813382163', role: 'call_agent'),
    Agent(name: 'Akshay Singh', number: '9466634594', role: 'call_agent'),
    Agent(name: 'Jai Maa Gange Trust', number: '8168132317', role: 'call_agent'),
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AgentViewModel>.reactive(viewModelBuilder: ()=>AgentViewModel(),

        builder: (context, model, child){
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white, // Set a solid background color
              elevation: 2, // Add slight elevation to give a shadow effect
              iconTheme: IconThemeData(color: Colors.black),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text(
                'Agents',
                style: TextStyle(letterSpacing: 1, color: Colors.black),
              ),
              actions: [
                PopupMenuButton<String>(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  elevation: 3,
                  onSelected: (String value) {
                    // Handle menu selection
                    print('Selected: $value');
                  },
                  itemBuilder: (BuildContext context) {
                    return {'All Callers', 'Call Receiving', 'Add Contact', 'Dashboard', 'Call Logs', 'Agent Stats'}
                        .map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                  icon: Icon(Icons.more_vert, color: Colors.black),
                ),
              ],
            ),
            body: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: agents.length,
              itemBuilder: (context, index) {
                return Card(
                  surfaceTintColor: Colors.white,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Profile picture
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/background/profile.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 12), // Space between profile and text
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Name
                                  Row(
                                    children: [
                                      Text(
                                        'Name: ',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      Text(
                                        '${agents[index].name}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                          fontSize: 15,
                                          wordSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8), // Space between name and number
                                  // Number
                                  Row(
                                    children: [
                                      Text(
                                        'Number: ',
                                        style: TextStyle(
                                          letterSpacing: 1,
                                          color: Colors.black54,
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '${agents[index].number}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 7,
                        right: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            agents[index].role,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );



        });
  }
}
