import 'package:flutter/material.dart';
import 'constant.dart';

class KundliView extends StatefulWidget {
  const KundliView({super.key});

  @override
  State<KundliView> createState() => _KundliViewState();
}

class _KundliViewState extends State<KundliView> {
  // Define a list of tabs and their content
  final List<Map<String, dynamic>> tabs = [
    {'title': 'Lagna Chark', 'content': 'Lagna Chark Content'},
    {'title': 'Maha Dasha', 'content': 'Maha Dasha Content'},
    {'title': 'Tab 1', 'content': 'Content for Tab 1'},
    {'title': 'Tab 2', 'content': 'Content for Tab 2'},
  ];

  // Define a list of dynamic text for the cards
  final List<String> textCardContent = [
    'दूसरे पर डिपेंड रहना, बिल्कुल पसंद नहीं है आपको!',
    'आप ज़िद्दी बहुत है, एक बात पर एड़ गए तो एड़ गए!',
    'समाज में लोग आपकी, इज्जत बहुत करते है!',
    'कोई भी आपसे बात करते वक्त झिझकता है, कोई भी खुल कर बात नहीं कर पाता आपसे!',
  ];

  bool showInfo = false;
  bool showHistory = false;
  Column showHistoryWidget() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          tabs: const [
                            Tab(text: 'Liked'),
                            Tab(text: 'Not Liked'),
                          ],
                          labelColor: Colors.orange,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.orange,
                        ),
                        Container(
                          height: 300, // Adjust height as needed
                          child: TabBarView(
                            children: [
                              // Content for the "Liked" tab
                              ListView(
                                children: [
                                  // Replace with your content
                                  Text("Liked Content 1"),
                                  Text("Liked Content 2"),
                                  // Add more items here
                                ],
                              ),
                              // Content for the "Not Liked" tab
                              ListView(
                                children: [
                                  // Replace with your content
                                  Text("Not Liked Content 1"),
                                  Text("Not Liked Content 2"),
                                  // Add more items here
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          showHistory = false; // Hide the history
                        });
                      },
                      child: const Text(
                        "Hide History",
                        style: TextStyle(
                          color: Colors.blue,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column showInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            surfaceTintColor: Colors.white,
            color: Colors.white,

            // margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  buildInfoRow('Name :', 'Nitin', '9105531053', ''),
                  const SizedBox(height: 5),
                  buildInfoRow('DOB :', '18/08/1998', '02:40', ''),
                  const SizedBox(height: 5),
                  buildInfoRow('राशि :', 'मिथुन', '', ''),
                  const SizedBox(height: 5),
                  buildInfoRow('नक्षत्र :', 'आर्द्रा', 'नाड़ी :', 'आदि'),
                  const SizedBox(height: 5),
                  buildInfoRow('योगिनी :', 'कुला', 'वर्ण :', 'शूद्र'),
                  const SizedBox(height: 5),
                  buildInfoRow('ज्ञान :', 'मृदु', 'पाया :', 'सोना'),
                  const SizedBox(height: 5),
                  buildInfoRow('तत्व :', 'वायु', 'भाग्यशाली पत्थर :', 'पीला नीलम'),
                  const SizedBox(height: 5),
                  buildInfoRow('लाइफस्टोन :', 'माणिक', 'फॉर्च्यून स्टोन :', 'मूंगा'),
                  const SizedBox(height: 5),
                  buildInfoRow('कुण्डली :', 'सिंह', 'रंग :', 'काले'),
                  const SizedBox(height: 5),
                  buildInfoRow('तिथि :', 'कृ. नवमी', 'योग :', 'वज्र'),
                  const SizedBox(height: 10),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          showInfo = false; // Hide the info
                        });
                      },
                      child: const Text(
                        "Hide Info",
                        style: TextStyle(
                          color: Colors.blue,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }

  Widget buildInfoRow(String title1, String value1, String title2, String value2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            children: [
              Text(
                title1,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  value1,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (title2.isNotEmpty)
          Flexible(
            child: Row(
              children: [
                Text(
                  title2,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    value2,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

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
        title: const Text(
          'Kundli Page',
          style: TextStyle(color: Colors.white, letterSpacing: 1),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          PopupMenuButton<int>(
            icon: const Icon(Icons.more_vert_outlined),
            onSelected: (value) {
              setState(() {
                if (value == 1) {
                  showInfo = !showInfo;
                }
                if (value == 2 ) {
                  showHistory = !showHistory;
                }

              });
            },
            itemBuilder: (context) => [
              const PopupMenuItem(

                value: 1,
                child: Text("Show Info"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Show History"),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: containerdesign.decoration,
                child: Column(
                  children: [
                    Card(
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
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Name : ',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' Neetu',
                                  style: TextStyle(
                                    fontSize: 16,
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
                                ),
                                Text(
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
                                ),
                                Text(
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
                                  ),
                                  Text(
                                    ' Jaunpur/Uttar Pradesh/India',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Center(
                              child: Column(
                                children: [
                                  // Additional widgets can be added here
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
            if (showInfo) showInfoWidget(),
            if (showHistory) showHistoryWidget(),
            DefaultTabController(
              length: tabs.length,
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
                        isScrollable: true,
                        unselectedLabelStyle: const TextStyle(fontSize: 13),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black54,
                        tabs: tabs.map((tab) => Tab(text: tab['title'])).toList(),
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
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
            for (String text in textCardContent) buildTextCard(text),
            DefaultTabController(
              length: tabs.length,
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
                        isScrollable: true,
                        unselectedLabelStyle: const TextStyle(fontSize: 13),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black54,
                        tabs: tabs.map((tab) => Tab(text: tab['title'])).toList(),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
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
