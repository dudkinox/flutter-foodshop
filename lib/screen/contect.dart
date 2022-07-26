import 'package:flutter/material.dart';

import 'Home.dart';

class Contect extends StatefulWidget {
  @override
  _ContectState createState() => _ContectState();
}

class _ContectState extends State<Contect> {
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
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("ติดต่อร้าน"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(75, 10, 0, 0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/background.jpg",
                  width: 350,
                  height: 200,
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Row(
                  children: const [
                    Text(
                      "ที่อยู่ร้าน 133/3 หมู่ 8 ถนนเลียบคลองสิบสามฝั่งตะวันตก \nแขวงหนองจอก เขตหนองจอก 10530",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Row(
                  children: const [
                    Text(
                      "โทร: 085-1300-169",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Row(
                  children: const [
                    Text(
                      "เพจร้าน: โจ๊กสามไข่",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
