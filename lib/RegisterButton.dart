import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.green[400],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text("Register", style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),
        ),
    );
  }
}