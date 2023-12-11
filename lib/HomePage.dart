import 'package:flutter/material.dart';
import 'Exceptions/screen1.dart';
import 'Exceptions/screen2.dart';
import 'Exceptions/screen3.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  void goToPage(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      screen1(context),
      screen2(context),
      screen3(context),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Java Related Data'),
      ),
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: goToPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Descriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Examples',
          ),
        ],
      ),
    );
  }

  Widget screen1(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Descriptions Screen'),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopicScreen('Arrays')),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text('Arrays'),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopicScreen('Strings')),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text('Strings'),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopicScreen('Loops')),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text('Loops'),
            ),
          ],
        ),
      ],
    );
  }

  Widget screen2(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Categories Screen'),
        // Add buttons for categories and navigation logic
      ],
    );
  }

  Widget screen3(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Examples Screen'),
        // Add buttons for examples and navigation logic
      ],
    );
  }
}

class TopicScreen extends StatelessWidget {
  final String topic;

  TopicScreen(this.topic);

  // Function to return content based on the topic
  Widget getContent() {
    switch (topic) {
      case 'Arrays':
        return screen1(); // Replace this with the actual content of screen1.dart
    // Add cases for other topics as needed
      default:
        return Container(); // Empty container for unknown topics
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getContent(), // Call the getContent function to display the content
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the previous screen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  textStyle: TextStyle(fontSize: 18),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class _MyHomePageState extends State<HomePage> {
//   int currentPageIndex = 0;
//
//   void goToPage(int index) {
//     setState(() {
//       currentPageIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> pages = [
//       screen1(),
//       screen2(),
//       screen3(),
//     ];
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page Navigation Example'),
//       ),
//       body: pages[currentPageIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentPageIndex,
//         onTap: goToPage,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.description),
//             label: 'Descriptions',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.category),
//             label: 'Categories',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.code),
//             label: 'Examples',
//           ),
//         ],
//       ),
//     );
//   }
// }