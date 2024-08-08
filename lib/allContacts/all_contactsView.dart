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

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllContactsViewModal>.reactive(viewModelBuilder: () => AllContactsViewModal(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Row(
                children: [
                  Text(
                    'Caller List',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
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

                }, icon: Icon(Icons.filter_list)),
                PopupMenuButton<String>(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  elevation: 3,
                  onSelected: (String value) {
                    print('Selected: $value');
                  },
                  itemBuilder: (BuildContext context) {
                    return {'All Callers', 'Call Receiving', 'Add Contact', 'Dashboard', 'Call Logs', 'Agent Stats', 'Go to page '}
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

            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
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
                          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                          elevation: 0.5,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black12.withOpacity(0.05),
                            ),
                            borderRadius: BorderRadius.only(
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
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Text(
                                          '${contacts[index]['name']} . F',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 30),
                                          child: Text(contacts[index]['phone']!,
                                              style: TextStyle(fontWeight: FontWeight.w500)),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 60),
                                      child: Row(
                                        children: [
                                          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                                          IconButton(onPressed: () {}, icon: Image.asset('assets/icons/whatsapp.png',height: 30,)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Divider(),
                                Row(
                                  children: [
                                    Text('Location : ',style: TextStyle(color: Colors.black54)),
                                    Text(contacts[index]['location']!,style: TextStyle(fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Details : ',style: TextStyle(color: Colors.black54)),
                                    Text(contacts[index]['details']!,style: TextStyle(fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                Divider(),
                                FittedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Update at: ',style: TextStyle(color: Colors.black54)),
                                          Text(' ${contacts[index]['update']}',style: TextStyle(fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text('Register at: ',style: TextStyle(color: Colors.black54)),
                                          Text(' ${contacts[index]['register']}',style: TextStyle(fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text('Registered By: ',style: TextStyle(color: Colors.black54)),
                                          Text(' ${contacts[index]['registeredBy']}',style: TextStyle(fontWeight: FontWeight.w400)),
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
