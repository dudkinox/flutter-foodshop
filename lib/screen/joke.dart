import 'package:flutter/material.dart';

class JokeMenu extends StatefulWidget {
  final title;
  const JokeMenu({Key? key, this.title}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _JokeMenuState createState() => _JokeMenuState();
}

class _JokeMenuState extends State<JokeMenu> {
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
              Row(
                mainAxisSize: MainAxisSize.max,
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
                          'โจ๊กทะเลธรรมดา',
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
                        padding: EdgeInsetsDirectional.fromSTEB(67, 10, 10, 0),
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
              Row(
                mainAxisSize: MainAxisSize.max,
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
                          'โจ๊กเนื้อต้มยำหม้อดิน',
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
                        padding: EdgeInsetsDirectional.fromSTEB(48, 10, 10, 0),
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
              Row(
                mainAxisSize: MainAxisSize.max,
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
                          'โจ๊กเนื้อหม้อดิน',
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
                        padding: EdgeInsetsDirectional.fromSTEB(80, 10, 10, 0),
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
              Row(
                mainAxisSize: MainAxisSize.max,
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
                          'โจ๊กไก่ต้มยำหม้อดิน',
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
                        padding: EdgeInsetsDirectional.fromSTEB(44, 10, 10, 0),
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
                    child: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(70, 10, 0, 0),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(70, 10, 0, 0),
                    child: Icon(
                      Icons.watch_later_rounded,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(70, 10, 0, 0),
                    child: Icon(
                      Icons.settings_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
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
