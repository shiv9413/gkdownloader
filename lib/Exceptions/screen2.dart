import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dealing/Example/Specifing Exceptions'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
            "Dealing with exceptions \n\n"
          "1. Checked exceptions need to be specified or handled with a try-catch block \n\n"
                "2. Unchecked exceptions can be addressed by fixing bugs in the code or by setting a try- catch block \n\n"
                "3. Errors may have serveral causes,each with theri our solutions",
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}