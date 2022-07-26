import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class appetizer extends StatefulWidget {
  @override
  _appetizerState createState() => _appetizerState();
}
class _appetizerState extends State<appetizer> {
  get colorForSwap1 => null;

  get colors => null;

  
  @override
  Widget build(BuildContext context) {
    Future<void> onPullToRefresh() async {
		await Future.delayed(Duration(milliseconds: 500));
		setState(() {
			if (colors[0] == colorForSwap1[0]) {
			  var colors = colorForSwap1;
			} else {
				var colors = colorForSwap1;
			}
		});
	}
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
            title: Text('อาหารทานเล่น', style: TextStyle(color: Colors.black),),
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
                        "assets/images/yum.jpg",                                   
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
                            'ยำมาม่า',
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
                        "assets/images/meatball.jpg",                                   
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
                            'ลูกชิ้น',
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
                          padding: EdgeInsetsDirectional.fromSTEB(159, 10, 10, 0),
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
                        "assets/images/bread.jpg",                                   
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
                            'ขนมปังปิ้ง',
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
                          padding: EdgeInsetsDirectional.fromSTEB(125, 10, 10, 0),
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
                        "assets/images/sausage.jpg",                                   
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
                            'ไส้กรอกข้าว',
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
                          padding: EdgeInsetsDirectional.fromSTEB(114, 10, 10, 0),
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
                      padding: EdgeInsetsDirectional.fromSTEB(30, 120, 0, 0),
                      child: Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(70, 120, 0, 0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(70, 120, 0, 0),
                      child: Icon(
                        Icons.watch_later_rounded,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(70, 120, 0, 0),
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