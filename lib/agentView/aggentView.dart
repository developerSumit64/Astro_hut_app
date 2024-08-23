import 'package:api/agentView/agentViewModel.dart';
import 'package:api/constants/constantStyle.dart';
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
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ViewModelBuilder<AgentViewModel>.reactive(
          viewModelBuilder: () => AgentViewModel(),
          builder: (context, viewModel, child) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildListItem(context, Icons.people, 'All Callers', Colors.blue, viewModel.NavigateTOAllCaller),
                  _buildListItem(context, Icons.call_received, 'Call Receiving', Colors.green, viewModel.navigateToCallReceiving),
                  _buildListItem(context, Icons.contact_phone, 'Add Contact', Colors.orange, viewModel.navigateToRegisterNewUser),
                  // _buildListItem(context, Icons.dashboard, 'Dashboard', Colors.red, viewModel.NavigateTODashboard),
                  _buildListItem(context, Icons.call, 'Call Logs', Colors.purple, viewModel.NavigateTOAllCaller),
                  _buildListItem(context, Icons.bar_chart, 'Agent Stats', Colors.teal, viewModel.navigateToAgentView),
                  _buildListItem(context, Icons.arrow_forward, 'Go to page', Colors.brown, viewModel.NavigateTOAllCaller),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildListItem(BuildContext context, IconData icon, String text, Color iconColor, void Function() callback) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(text),
      onTap: () {
        callback();
        // Navigator.pop(context); // Close the bottom sheet after navigation
      },
    );
  }

  @override
  Widget build(BuildContext context) {
   return ViewModelBuilder<AgentViewModel>.reactive(viewModelBuilder: () => AgentViewModel(),
       builder:(context, viewModel, child) {
         return Scaffold(
           backgroundColor: Colors.grey.shade200,
           appBar: AppBar(
             flexibleSpace: Container(
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   colors: [Colors.orange, Colors.orange.shade300],
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,
                 ),
               ),
             ),
             // backgroundColor: Colors.white, // Set a solid background color
             elevation: 2, // Add slight elevation to give a shadow effect
             iconTheme: IconThemeData(color: Colors.white),
             leading: IconButton(
               icon: Icon(Icons.arrow_back),
               onPressed: () {
                 Navigator.of(context).pop();
               },
             ),
             title: Text(
               'Agents',
               style: TextStyle(letterSpacing: 1, color: Colors.white),
             ),
             actions: [
               IconButton(
                 icon: Icon(Icons.more_vert, color: Colors.white),
                 onPressed: () => _showModalBottomSheet(context),
               ),
             ],
           ),
           body: ListView.builder(
             padding: EdgeInsets.all(8),
             itemCount: agents.length,
             itemBuilder: (context, index) {
               return GestureDetector(
                 onTap: () {
                   viewModel.NavigateToUpadteLIstAgent();
                 },
                 child: Container(
                   decoration: containerdesign.decoration,
                   child: Card(
                     surfaceTintColor: Colors.white,
                     color: Colors.white,
                     margin: EdgeInsets.symmetric(vertical: 3, horizontal:1),
                     elevation: 1,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(32),
                       bottomRight: Radius.circular(32),
                     ),),
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
                                     "assets/images/profile.jpeg",
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
                           right: 15,
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
                                 color: Colors.orange.shade400,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
               );
             },
           ),
         );
       },);

  }
}