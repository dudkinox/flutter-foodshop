import 'package:flutter/material.dart';

import 'Home.dart';
// import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
      body: ListView(
        children: <Widget>[
          const SizedBox(
            width: 10,
            height: 10,
          ),
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text(
                  'สรุปคำสั่งซื้อ',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text(
                  'โจ๊กทะเลต้มยำหม้อดิน',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(300, 10, 0, 0),
                child: Text(
                  '59',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                child: Text(
                  'ไข่ลวก',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text(
                  'โจ๊กเนื้อต้มยำหม้อดิน',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(305, 10, 0, 0),
                child: Text(
                  '50',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                child: Text(
                  'ไข่ต้ม',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                child: Text(
                  'รวม',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(395, 10, 0, 0),
                child: Text(
                  '109',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: Text(
                  'วิธีการชำระเงิน',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: Text(
                  'ธนาคาไทยพาณิชย์',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: Text(
                  'เลขที่บัญชี 4270195914 (มาลินี ปัญญา)',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: ElevatedButton(
                  child: const Text("แนบรูป",
                      style: TextStyle(
                          fontSize: 20, fontFamily: 'SpartanMB-Black')),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(170, 20, 0, 0),
                child: ElevatedButton(
                  child: const Text("ยืนยัน",
                      style: TextStyle(
                          fontSize: 20, fontFamily: 'SpartanMB-Black')),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: ElevatedButton(
                  child: const Text("ยกเลิก",
                      style: TextStyle(
                          fontSize: 20, fontFamily: 'SpartanMB-Black')),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
