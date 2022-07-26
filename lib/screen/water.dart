import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class WaterMenu extends StatefulWidget {
  @override
  _WaterMenuState createState() => _WaterMenuState();
}
class _WaterMenuState extends State<WaterMenu> {
  
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
            title: Text('เมนูเครื่องดื่ม', style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.teal,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                      child: Image.asset(
                        "assets/images/water.jpg",                                   
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
                            'ชานม',
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
                          padding: EdgeInsetsDirectional.fromSTEB(160, 10, 10, 0),
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
                        "assets/images/water.jpg",                                   
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
                            'ชาเขียว',
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
                          padding: EdgeInsetsDirectional.fromSTEB(145, 10, 10, 0),
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
                        "assets/images/water.jpg",                                   
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
                            'โกโก้',
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
                          padding: EdgeInsetsDirectional.fromSTEB(166, 10, 10, 0),
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
                        "assets/images/water.jpg",                                   
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
                            'นมเย็น',
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
                          padding: EdgeInsetsDirectional.fromSTEB(149, 10, 10, 0),
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
                        "assets/images/water.jpg",                                   
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
                            'โยเกิร์ต',
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
                          padding: EdgeInsetsDirectional.fromSTEB(145, 10, 10, 0),
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