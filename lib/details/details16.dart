import 'package:flutter/material.dart';

import '../screen/steak.dart';

class Details16 extends StatefulWidget {
  @override
  _Details16State createState() => _Details16State();
}

class _Details16State extends State<Details16> {
  int number = 1;
  bool CheckBoxValue = false;

  // final formkey = GlobalKey<FormState>();
  // Profile profile = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute route =
                MaterialPageRoute(builder: (value) => SteakMenu());
            Navigator.push(context, route);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text('รายละเอียด', style: TextStyle(color: Colors.black)),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/steak.jpg",
                  width: 200.0,
                  height: 200.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'เฟรนช์ฟรายส์ชีส',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'จำนวน',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                Text(
                  number.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Icon(
                  Icons.arrow_right,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'รายละเอียดเพิ่มเติม',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'รายละเอียดเพิ่มเติม',
                  ),
                  // obscureText: true,
                  // decoration: InputDecoration(
                  //   border: OutlineInputBorder(),
                  //   labelText: 'รายละเอียดเพิ่มเติม',
                  // ),
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
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          number = number + 1;
        });
      }),
    );
  }

  showDrawer() {}
}