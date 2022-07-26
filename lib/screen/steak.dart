import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class SteakMenu extends StatefulWidget {
  @override
  _SteakMenuState createState() => _SteakMenuState();
}
class _SteakMenuState extends State<SteakMenu> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            // actions: const [
            //   Icon(
            //     Icons.arrow_back,
            //     color: Colors.black,
            //     size: 24,
            //   ),
            // ], 
            title: const Text('เมนูสเต็ก', style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.teal,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                      child: Image.asset(
                        "assets/images/steak.jpg",                                   
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
                            'สเต็กเนื้อพริกไทยดำ',
                            style:TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'SpartanMB-Black',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                          child: Text(
                            'ราคา 59 บาท',
                            style:TextStyle(
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
                          padding: EdgeInsetsDirectional.fromSTEB(40, 10, 10, 0),
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
                        "assets/images/steak.jpg",                                   
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
                            'สเต็กเนื้อบาบีคิว',
                            style:TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'SpartanMB-Black',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                          child: Text(
                            'ราคา 59 บาท',
                            style:TextStyle(
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
                          padding: EdgeInsetsDirectional.fromSTEB(71, 10, 10, 0),
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
                        "assets/images/steak.jpg",                                   
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
                            'สเต็กไก่พริกไทยดำ',
                            style:TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'SpartanMB-Black',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                          child: Text(
                            'ราคา 59 บาท',
                            style:TextStyle(
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
                        "assets/images/steak.jpg",                                   
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
                            'สเต็กไก่บาบีคิว',
                            style:TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'SpartanMB-Black',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                          child: Text(
                            'ราคา 59 บาท',
                            style:TextStyle(
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
                          padding: EdgeInsetsDirectional.fromSTEB(78, 10, 10, 0),
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
                        "assets/images/steak.jpg",                                   
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
                            'สเต็กไก่กรอบ',
                            style:TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'SpartanMB-Black',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                          child: Text(
                            'ราคา 59 บาท',
                            style:TextStyle(
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
                          padding: EdgeInsetsDirectional.fromSTEB(85, 10, 10, 0),
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
      ),
    );
  }
}
