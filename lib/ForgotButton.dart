import 'package:flutter/material.dart';

class ForgotButton extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 120),
      decoration: BoxDecoration(
        color: Colors.red[400],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text("Forgot Password", style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}