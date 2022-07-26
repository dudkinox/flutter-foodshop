import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Icon(
                    Icons.reorder,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(230, 0, 0, 0),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(236, 0, 10, 0),
                      child: Text(
                        'username',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'SpartanMB-Black',
                        ),
                      ),
                    ), 
                  ],
                ),
              ],
            ),
            Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: Text(
                      'โจ๊กสามไข่',
                      style:TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SpartanMB-Black',
                      ),
                    ),
                  ),
                ],
              ), 
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                  child: Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ],
            ), 
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Text(
                        'เมนูแนะนำ',
                        style:TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'SpartanMB-Black',
                        ),
                      ),
                    ),
                  ],
                ),
              ],        
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                  child: Image.asset(
                    "assets/images/joke.jpg",                                   
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Text(
                        'โจ๊กทะเลต้มยำหม้อดิน',
                        style:TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'SpartanMB-Black',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                      child: Text(
                        'โปรโมชั่น',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'SpartanMB-Black',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Image.asset(
                    "assets/images/promotion.jpg",                                   
                    width: 390,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                      child: Text(
                        'เมนู',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'SpartanMB-Black',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Image.asset(
                    "assets/images/joke.jpg",                                   
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Image.asset(
                    "assets/images/joke.jpg",                                   
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Image.asset(
                    "assets/images/joke.jpg",                                   
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Image.asset(
                    "assets/images/joke.jpg",                                   
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 10, 0, 0),
                  child: Text(
                    'โจ๊ก',
                    style:TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SpartanMB-Black',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(75, 10, 0, 0),
                  child: Text(
                    'สเต็ก',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SpartanMB-Black',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 10, 0, 0),
                  child: Text(
                    'เครื่องดื่ม',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SpartanMB-Black',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 0),
                  child: Text(
                    'อาหารทานเล่น',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SpartanMB-Black',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



//                                     Column(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsetsDirectional.fromSTEB(210, 0, 0, 0),
//                                           child: Icon(
//                                             Icons.person,
//                                             color: Colors.black,
//                                             size: 35,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsetsDirectional.fromSTEB(220, 0, 0, 0),
//                                           child: Text(
//                                             'username',
//                                             textAlign: TextAlign.justify,
//                                             style: TextStyle(
//                                               fontSize: 20.0,
//                                               fontFamily: 'SpartanMB-Black',
//                                             ),
//                                           ),
//                                         ),      
//                                       ]
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
//                                       child: Row(
//                                         children: [
//                                           Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
//                                             child: Text(
//                                               'โจ๊กสามไข่',
//                                               style: TextStyle(
//                                                 fontSize: 30.0,
//                                                 fontFamily: 'SpartanMB-Black',
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 10),
//                                           child: Icon(
//                                             Icons.settings_outlined,
//                                             color: Colors.black,
//                                             size: 24,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Icon(
//                                       Icons.search,
//                                       color: Colors.black,
//                                       size: 24,
//                                     ),
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(   
//                                       children: [
//                                         Padding(    
//                                           padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
//                                           child: Text(
//                                             'เมนูแนะนำ',
//                                             style: TextStyle(
//                                               fontSize: 30.0,
//                                               fontFamily: 'SpartanMB-Black',
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(15, 5, 0, 0),
//                                   child: Image.asset(
//                                     "assets/images/joke.jpg",                                   
//                                     width: 100,
//                                     height: 100,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
//                                   child: Text(
//                                     'โจ๊กต้มยำทะเล',
//                                     style: TextStyle(
//                                       fontSize: 18.0,
//                                       fontFamily: 'SpartanMB-Black',
//                                     ),
//                                   ),                                
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Padding (
//                                       padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 10),
//                                       child: Text(
//                                         'เมนู',
//                                         style: TextStyle(
//                                           fontSize: 30.0,
//                                           fontFamily: 'SpartanMB-Black',
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
//                                   child: Image.asset(
//                                     "assets/images/joke.jpg",
//                                     width: 100,
//                                     height: 100,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
//                               child: Image.asset(
//                                 "assets/images/joke.jpg",
//                                 width: 100,
//                                 height: 100,
//                               fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
//                               child: Image.asset(
//                                 "assets/images/joke.jpg",
//                                 width: 100,
//                                 height: 100,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               padding: 
//                                 EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
//                               child: Image.asset(
//                                 "assets/images/joke.jpg",
//                                 width: 100,
//                                 height: 100,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(52, 10, 0, 0),
//                           child: Text(
//                             'โจ๊ก',
//                             style: TextStyle(
//                               fontSize: 18.0,
//                               fontFamily: 'SpartanMB-Black',
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(110, 10, 0, 0),
//                       child: Text(
//                         'สเต็ก',
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontFamily: 'SpartanMB-Black',
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(80, 10, 0, 0),
//                       child: Text(
//                         'เครื่องดื่ม',
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontFamily: 'SpartanMB-Black',
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(15, 5, 0, 0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   'โปรโมชั่น',
//                                   style:TextStyle(
//                                     fontSize: 30.0,
//                                     fontFamily: 'SpartanMB-Black',
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
//                       child: Row(
//                         children: [
//                           Image.asset(
//                             "assets/images/promotion.jpg",
//                             width: 350,
//                             height: 150,
//                             fit: BoxFit.cover,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }