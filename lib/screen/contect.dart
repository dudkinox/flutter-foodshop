import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'facebook_page.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
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
                  children: [
                    const Text(
                      "เพจร้าน:",
                    ),
                    IconButton(
                      icon: const Icon(Icons.facebook),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FacebookPage(),
                          ),
                        );
                      },
                    ),
                    const Text(
                      " โจ๊กสามไข่",
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
