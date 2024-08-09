import 'package:api/constants/constantStyle.dart';
import 'package:flutter/material.dart';

class KundliView extends StatefulWidget {
  const KundliView({super.key});

  @override
  State<KundliView> createState() => _KundliViewState();
}

class _KundliViewState extends State<KundliView> {
  // Define a list of tabs and their content
  final List<Map<String, dynamic>> tabs = [
    {'title': 'Lagna Chark', 'content': 'Lagna Chark Content',},
    {'title': 'Maha Dasha', 'content': 'Maha Dasha Content'},
    {'title': 'Tab 1', 'content': 'Content for Tab 1'},
    {'title': 'Tab 2', 'content': 'Content for Tab 2'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.orange.shade400],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text('Kundli Page', style: TextStyle(color: Colors.white, letterSpacing: 1)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 11),

            // sonal Details Card
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: containerdesign.decoration,
                child: Column(
                  children: [

                    Card(
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
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Row(
                              children: [
                                Text(
                                  'Name : ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ), Text(
                                  ' Neetu',
                                  style: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'DOB : ',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),Text(
                                  '01/11/1991',
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'राशि : ',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),   Text(
                                  'सिंह',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            FittedBox(
                              child: Row(
                                children: [
                                  Text(
                                    'Location: ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black26,
                                    ),
                                  ),Text(
                                    ' Jaunpur/Uttar Pradesh/India',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Dynamic Tabs with Enhanced Design
            DefaultTabController(

              length: tabs.length, // Number of dynamic tabs
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.shade400,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TabBar(
                        mouseCursor: SystemMouseCursors.click,
                        // overlayColor: MaterialStatePropertyAll(Colors.pink),
                        isScrollable: true,
                        unselectedLabelStyle: TextStyle(fontSize: 13),
                        labelColor: Colors.white,

                        unselectedLabelColor: Colors.black54,
                        // indicator: BoxDecoration(
                        //   color: Colors.white,
                        //   borderRadius: BorderRadius.all(Radius.circular(1)),
                      // ),
                        tabs: tabs.map((tab) => Tab(text: tab['title'])).toList(),
                      ),
                    ),
                  ),
                  Container(
                    height: 300, // Adjust height as per your need
                    child: TabBarView(
                      children: tabs.map((tab) {
                        return Center(
                          child: Text(
                            tab['content'],
                            style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            // Individual Cards for Each Text
            buildTextCard('दूसरे पर डिपेंड रहना, बिल्कुल पसंद नहीं है आपको!'),
            buildTextCard('आप ज़िद्दी बहुत है, एक बात पर एड़ गए तो एड़ गए!'),
            buildTextCard('समाज में लोग आपकी, इज्जत बहुत करते है!'),
            buildTextCard('कोई भी आपसे बात करते वक्त झिझकता है, कोई भी खुल कर बात नहीं कर पाता आपसे!'),

            // Additional Dynamic Tabs Below the Cards
            DefaultTabController(
              length: tabs.length, // Number of dynamic tabs
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.shade400,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TabBar(

                        mouseCursor: SystemMouseCursors.click,
                        // overlayColor: MaterialStatePropertyAll(Colors.pink),
                        isScrollable: true,
                        unselectedLabelStyle: TextStyle(fontSize: 13),
                        labelColor: Colors.white,

                        unselectedLabelColor: Colors.black54,
                        tabs: tabs.map((tab) => Tab(text: tab['title'])).toList(),
                      ),
                    ),
                  ),
                  Container(
                    height: 200, // Adjust height as per your need
                    child: TabBarView(
                      children: tabs.map((tab) {
                        return Center(
                          child: Text(
                            tab['content'],
                            style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create individual text cards
  Widget buildTextCard(String text) {
    return Card(
      surfaceTintColor: Colors.white,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 3,
      margin: const EdgeInsets.all(6),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
