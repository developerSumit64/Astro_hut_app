import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Caller List',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.filter_list)),
          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {

                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text(contacts[index]['phone']!,style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Row(
                                children: [
                                  IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                                  IconButton(onPressed: () {}, icon: Image.asset('assets/icons/whatsapp.png',height: 30,))
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        Row(
                          children: [
                            Text('Location : ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                            Text(contacts[index]['location']!,style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Details : ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
                            Text(contacts[index]['details']!,style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Update at: ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
                                Text(' ${contacts[index]['update']}',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Register at: ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
                                Text(' ${contacts[index]['register']}',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Registered By: ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
                                Text(' ${contacts[index]['registeredBy']}',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
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
    );
  }
}

