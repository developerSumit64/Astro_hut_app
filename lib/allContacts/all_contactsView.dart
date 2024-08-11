import 'package:api/allContacts/allContactsViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../updateList/updateListView.dart';

class AllContactsView extends StatefulWidget {
  const AllContactsView({super.key});

  @override
  State<AllContactsView> createState() => _AllContactsViewState();
}

class _AllContactsViewState extends State<AllContactsView> {
  final List<Map<String, String>> contacts = [
    {
      'name': 'Sapna Singh',
      'phone': '9096322764',
      'location': 'Nashik/Maharashtra/India',
      'details': '34. Call transfer to Priya. Not Paid',
      'update': '02/08/2024 12:07',
      'register': '02/08/2024 12:07',
      'registeredBy': 'guru ji'
    },
    {
      'name': 'Sapna Singh',
      'phone': '9096322764',
      'location': 'Nashik/Maharashtra/India',
      'details': '35. Call transfer to Pooja. Not Paid',
      'update': '31/07/2024 18:19',
      'register': '31/07/2024 18:19',
      'registeredBy': 'Shweta'
    },
    {
      'name': 'Anjali Kumari',
      'phone': '9060904630',
      'location': 'Patna/Bihar/India',
      'details': '34. Call transfer to Priya. Not Paid',
      'update': '31/07/2024 18:09',
      'register': '31/07/2024 16:49',
      'registeredBy': 'Shweta'
    },
  ];
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ViewModelBuilder<AllContactsViewModal>.reactive(
          viewModelBuilder: () => AllContactsViewModal(),
          builder: (context, viewModel, child) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              decoration: const BoxDecoration(
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
                  _buildListItem(context, Icons.dashboard, 'Dashboard', Colors.red, viewModel.NavigateTODashboard),
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
    return ViewModelBuilder<AllContactsViewModal>.reactive(viewModelBuilder: () => AllContactsViewModal(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              title: const Row(
                children: [
                  Text(
                    'Caller List',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Padding(
                  //   padding:  EdgeInsets.only(left: 90),
                  //   child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
                  // ),
                ],

              ),
              actions: [
                IconButton(onPressed: () {
                  viewModel.NavigateTOFilterView();

                }, icon: const Icon(Icons.filter_list,color: Colors.white,)),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () => _showModalBottomSheet(context),
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
            ),

            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) {

                        return Card(
                          surfaceTintColor: Colors.white,
                          color: Colors.white,
                          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black12.withOpacity(0.05),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(32),
                              bottomRight: Radius.circular(32),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Text(contacts[index]['name']![0]),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Text(
                                          '${contacts[index]['name']} . F',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 30),
                                          child: Text(contacts[index]['phone']!,
                                              style: const TextStyle(fontWeight: FontWeight.w500)),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 60),
                                      child: Row(
                                        children: [
                                          IconButton(onPressed: () {
                                            viewModel.navigateToKundliView();

                                          }, icon: const Icon(Icons.call)),
                                          IconButton(onPressed: () {}, icon: Image.asset('assets/icons/whatsapp.png',height: 30,)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Divider(),
                                Row(
                                  children: [
                                    const Text('Location : ',style: TextStyle(color: Colors.black54)),
                                    Text(contacts[index]['location']!,style: const TextStyle(fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('Details : ',style: TextStyle(color: Colors.black54)),
                                    Text(contacts[index]['details']!,style: const TextStyle(fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                const Divider(),
                                FittedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          const Text('Update at: ',style: TextStyle(color: Colors.black54)),
                                          Text(' ${contacts[index]['update']}',style: const TextStyle(fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text('Register at: ',style: TextStyle(color: Colors.black54)),
                                          Text(' ${contacts[index]['register']}',style: const TextStyle(fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text('Registered By: ',style: TextStyle(color: Colors.black54)),
                                          Text(' ${contacts[index]['registeredBy']}',style: const TextStyle(fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },);
  }
}

