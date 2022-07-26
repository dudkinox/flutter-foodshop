import 'package:flutter/material.dart';

import 'Home.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  // กลุ่มเมนู

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute route =
                MaterialPageRoute(builder: (value) => HomePage());
            Navigator.push(context, route);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text('ตะกร้าอาหาร', style: TextStyle(color: Colors.black)),
      ),
      body: ListView(),
    );
  }
}
