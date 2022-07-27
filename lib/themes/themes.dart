// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Color.fromARGB(136, 0, 0, 0),
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color.fromARGB(255, 108, 241, 143),
  borderRadius: BorderRadius.circular(10.0),
  // ignore: prefer_const_literals_to_create_immutables
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
