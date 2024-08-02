import 'package:flutter/material.dart';

class AllContactsView extends StatefulWidget {
  const AllContactsView({super.key});

  @override
  State<AllContactsView> createState() => _AllContactsViewState();
}

class _AllContactsViewState extends State<AllContactsView> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> contacts = [
    {
      'name': 'Sapna Singh . F',
      'phone': '9096322764',
      'location': 'Nashik/Maharashtra/India',
      'details': '34. Call transfer to Priya. Not Paid',
      'update': '02/08/2024 12:07',
      'register': '02/08/2024 12:07',
      'registeredBy': 'guru ji'
    },
    {
      'name': 'Sapa Singh . F',
      'phone': '9096322764',
      'location': 'Nashik/Maharashtra/India',
      'details': '35. Call transfer to Pooja. Not Paid',
      'update': '31/07/2024 18:19',
      'register': '31/07/2024 18:29',
      'registeredBy': 'Shweta'
    },
    {
      'name': 'Anjali Kumari . F',
      'phone': '9060904630',
      'location': 'Patna/Bihar/India',
      'details': '34. Call transfer to Priya. Not Paid',
      'update': '31/07/2024 18:09',
      'register': '31/07/2024 16:49',
      'registeredBy': 'Shweta'
    },
    // Add more contacts here
  ];

  List<Map<String, String>> filteredContacts = [];

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts;
    _searchController.addListener(_filterContacts);
  }

  void _filterContacts() {
    setState(() {
      String searchTerm = _searchController.text.toLowerCase();
      filteredContacts = contacts.where((contact) {
        return contact['name']!.toLowerCase().contains(searchTerm) ||
            contact['phone']!.toLowerCase().contains(searchTerm) ||
            contact['location']!.toLowerCase().contains(searchTerm) ||
            contact['details']!.toLowerCase().contains(searchTerm) ||
            contact['update']!.toLowerCase().contains(searchTerm) ||
            contact['register']!.toLowerCase().contains(searchTerm) ||
            contact['registeredBy']!.toLowerCase().contains(searchTerm);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Caller List'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: filteredContacts.length,
                itemBuilder: (context, index) {
                  final contact = filteredContacts[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(contact['name']![0]), // Display initial
                      ),
                      title: Text(contact['name']!),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(contact['location']!),
                          Text(contact['details']!),
                          Text('Update at: ${contact['update']}'),
                          Text('Register at: ${contact['register']}'),
                          Text('Registered By: ${contact['registeredBy']}'),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.phone),
                          Icon(Icons.message),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('${index + 1}'),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
