import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Building screen1");
    return Scaffold(
      appBar: AppBar(
        title: Text('Java Exceptions & Categories'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          print("Building LayoutBuilder");
          return Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "When Building a Java Application of any complexity one must account for the fact that it exection\n\n"
                  "will not always go smoothy,sconer or later,some error will be encountered and \n\n"
                  "java way of handling this is to quote unquote,throw an exception \n\n"
                  "Catching and handling such exceptions is something which is required to ensure that a java program \n\n"
                  "continuous to run even when errors are encountered and that is the precisely the focus of this learning path.\n\n",
              style: TextStyle(fontSize: 18.0),
            ),
          );
        },
      ),
    );
  }
}
