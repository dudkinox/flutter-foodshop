import 'package:flutter/material.dart';

class MyStyle {

  Color darkColor = Colors.green.shade500;
  Color primaryColor = Colors.blue.shade500;


  SizedBox mySizedBox() => SizedBox(width: 8.0,height: 16.0,);

   Text showTitle(String title) => Text(
    title, 
    style: const TextStyle(
      fontSize: 24.0, 
      color: Colors.green,
      fontWeight: FontWeight.bold,
    ),
    
  );

 Container showLogo() {
    return Container(
            width: 120.0,
            child: Image.asset("assets/images/joke.jpg"),
          );
  }



MyStyle();

}