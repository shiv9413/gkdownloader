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
      nav1(context),
      nav2(context),
      nav3(context),
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

  Widget nav1(BuildContext context) {
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
              child: Text('Topic 1'),
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
              child: Text('Topic 2'),
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
              child: Text('Topic 3'),
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
                primary: Colors.pink,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text('Topic 4'),
            ),
          ],
        ),
        SizedBox(height: 8),  // Add spacing between rows
        Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TopicScreen('Loops')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  textStyle: TextStyle(fontSize: 18),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Text('Topic 5'),
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
                  primary: Colors.grey,
                  textStyle: TextStyle(fontSize: 18),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Text('Topic 6'),
              ),
            ],
        ),
      ],
    );
  }

  Widget nav2(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Categories Screen'),
        // Add buttons for categories and navigation logic
      ],
    );
  }

  Widget nav3(BuildContext context) {
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
        return screen1();// Replace this with the actual content of screen1.dart
    // Add cases for other topics as needed
      case 'Strings':
        return screen2();
      case 'Loops':
        return screen3();
      case 'GUM':
        return screen3();
      default:
        return Container(); // Empty container for unknown topics
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getContent(), // Call the getContent function to display the content
              SizedBox(height: 16),
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