import 'package:flutter/material.dart';

class MenuFood extends StatefulWidget {
  final String title;
  const MenuFood({Key? key, required this.title}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MenuFoodState createState() => _MenuFoodState();
}

class _MenuFoodState extends State<MenuFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text(
              widget.title,
              style: const TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.teal,
          ),
          body: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    child: Image.asset(
                      "assets/images/joke.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'โจ๊กทะเลต้มยำหม้อดิน',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'SpartanMB-Black',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Text(
                          'ราคา 59 บาท',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'SpartanMB-Black',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 10, 10, 0),
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
