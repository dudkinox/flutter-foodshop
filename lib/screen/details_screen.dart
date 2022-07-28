import 'package:flutter/material.dart';

import '../common/image_type_food.dart';
import 'menu_food.dart';

class DetailsScreen extends StatefulWidget {
  String title;
  String? name;
  String? lastName;
  String? avatar;
  String type;
  DetailsScreen({
    Key? key,
    required this.title,
    required this.name,
    required this.lastName,
    required this.avatar,
    required this.type,
  }) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int number = 1;
  TextEditingController detail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute route = MaterialPageRoute(
                builder: (value) => MenuFood(
                      title: widget.title,
                      name: widget.name,
                      lastName: widget.lastName,
                      avatar: widget.avatar,
                      type: widget.type,
                    ));
            Navigator.push(context, route);
          },
          icon: const Icon(Icons.arrow_back),
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
                ImageFoodType(type: widget.type, width: 200, height: 200),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.title,
                  style: const TextStyle(
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
                RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      if (number > 0) {
                        number = number - 1;
                      }
                    });
                  },
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.arrow_left,
                    size: 30,
                  ),
                ),
                Text(
                  number.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      number = number + 1;
                    });
                  },
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.arrow_right,
                    size: 30,
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
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: detail,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'รายละเอียดเพิ่มเติม',
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 10),
                  child: ElevatedButton(
                    child: const Text("ยืนยัน",
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'SpartanMB-Black')),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 10),
                  child: ElevatedButton(
                    child: const Text("ยกเลิก",
                        style: TextStyle(
                            fontSize: 20, fontFamily: 'SpartanMB-Black')),
                    onPressed: () {
                      Navigator.pop(context);
                      MaterialPageRoute route = MaterialPageRoute(
                          builder: (value) => MenuFood(
                                title: widget.title,
                                name: widget.name,
                                lastName: widget.lastName,
                                avatar: widget.avatar,
                                type: widget.type,
                              ));
                      Navigator.push(context, route);
                    },
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
