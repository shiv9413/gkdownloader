import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Dealing/Example/Specifing Exceptions'),
  //     ),
  //     body: Container(
  //       padding: EdgeInsets.all(16.0),
  //       child: Text(
  //           "Dealing with exceptions \n\n"
  //         "1. Checked exceptions need to be specified or handled with a try-catch block \n\n"
  //               "2. Unchecked exceptions can be addressed by fixing bugs in the code or by setting a try- catch block \n\n"
  //               "3. Errors may have serveral causes,each with theri our solutions",
  //         style: TextStyle(fontSize: 18.0),
  //       ),
  //     ),
  //   );
  // }
}