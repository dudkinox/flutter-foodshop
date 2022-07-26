import 'package:flutter/material.dart';

import '../screen/joke.dart';

class Details2 extends StatefulWidget {
  @override
  _Details2State createState() => _Details2State();
}

class _Details2State extends State<Details2> {
  int number = 1;
  bool value = false;
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
                MaterialPageRoute(builder: (value) => JokeMenu());
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
                  "assets/images/joke.jpg",
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
                  'โจ๊กทะเลหม้อดิน',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'กุ้ง+หมึก+ไก่สับ+ไข่ฟรีเลือกได้ 1 อย่าง',
                  style: TextStyle(
                    fontSize: 15.0,
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
                  'เลือกไข่ฟรีได้ 1 อย่าง',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(180, 0, 80, 0), //SizedBox
                  child: Text(
                    'ไข่ลวก',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(180, 0, 88, 0), //SizedBox
                  child: Text(
                    'ไข่ต้ม',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(180, 0, 59, 0), //SizedBox
                  child: Text(
                    'ไข่เยี่ยวม้า',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
              ],
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: const <Widget>[
            //     Text(
            //       'เลือกไข่ฟรีได้ 1 อย่าง',
            //       style: TextStyle(
            //         fontSize: 20.0,
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // const ListTile(
            //   title: Text('ไข่ลวก'),
            //   trailing: Checkbox(
            //     onChanged: null,
            //     value: false,
            //   ),
            // ),
            // const ListTile(
            //   title: Text('ไข่ต้ม'),
            //   trailing: Checkbox(
            //     onChanged: null,
            //     value: false,
            //   ),
            // ),
            // const ListTile(
            //   title: Text('ไข่เยี่ยวม้า'),
            //   trailing: Checkbox(
            //     onChanged: null,
            //     value: false,
            //   ),
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: const <Widget>[
            //     Text(
            //       'เพิ่มไข่',
            //       style: TextStyle(
            //         fontSize: 20.0,
            //       ),
            //     ),
            //   ],
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: const <Widget> [
            //     ListTile(
            //       title: Text('ไข่ลวก'),
            //       subtitle: Text('5บาท'),
            //       trailing: Checkbox(
            //         onChanged: null,
            //         value: false,
            //       ),
            //     ),
            //     ListTile(
            //       title: Text('ไข่ต้ม'),
            //       subtitle: Text('5บาท'),
            //       trailing: Checkbox(
            //         onChanged: null,
            //         value: false,
            //       ),
            //     ),
            //     ListTile(
            //       title: Text('ไข่เยี่ยวม้า'),
            //       subtitle: Text('5บาท'),
            //       trailing: Checkbox(
            //         onChanged: null,
            //         value: false,
            //       ),
            //     ),
            //   ],
            // ),
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
                    child: const Text(
                      "ยืนยัน",
                      style: TextStyle(
                          fontSize: 20, fontFamily: 'SpartanMB-Black'),
                    ),
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
            )
          ],
        ),
      ),
    );
  }

  showDrawer() {}
}
