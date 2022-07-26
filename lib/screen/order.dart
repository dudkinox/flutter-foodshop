import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.arrow_back),
          ),
        title: const Text("กิจกรรม"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 20, 0, 0),
                  child: ElevatedButton(
                    child: const Text(
                      "กำลังดำเนินการ",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SpartanMB-Black'
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 20, 0, 0),
                  child: ElevatedButton(
                    child: const Text(
                      "รายการที่สำเร็จ",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SpartanMB-Black'
                      ), 
                    ), 
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 20, 0, 0),
                  child: ElevatedButton(
                    child: const Text(
                      "รายการที่ยกเลิก",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SpartanMB-Black'
                      ), 
                    ), 
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ); 
  }
}


