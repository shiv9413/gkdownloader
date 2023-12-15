import 'package:flutter/material.dart';

class screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
        padding: EdgeInsets.all(18.0),
        child: Text(
          "an 5 Example of a try-catch block \n\n"
              "double [] prices = { 5.90, 18.99, 22.2, 88.1 }; \n",
          style: TextStyle(fontSize: 18.0),
        )
    );
  }
}