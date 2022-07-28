import 'dart:io';

import 'package:editable_image/editable_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  File? fileImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('สรุปคำสั่งซื้อ', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            const Text('วิธีการชำระเงิน', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage('assets/images/qr_scan.jpeg'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('แนบหลักฐานการชำระเงิน',
                    style: TextStyle(fontSize: 20)),
                const SizedBox(width: 20),
                RawMaterialButton(
                  onPressed: () async {
                    var image = await ImagePicker()
                        .getImage(source: ImageSource.gallery);
                    setState(() {
                      fileImage = File(image!.path);
                    });
                  },
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.photo_camera,
                    size: 20,
                  ),
                ),
              ],
            ),
            fileImage != null
                ? Container(
                    padding: const EdgeInsets.all(20),
                    child: Image.file(
                      fileImage!,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(),
            const SizedBox(height: 10),
            TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 0, 0, 0)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Color.fromARGB(255, 33, 243, 142)
                            .withOpacity(0.04);
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return Color.fromARGB(255, 17, 158, 62)
                            .withOpacity(0.12);
                      }
                      return null;
                    },
                  ),
                ),
                onPressed: () {},
                child: Container(
                  color: Color.fromARGB(255, 113, 174, 118),
                  padding: const EdgeInsets.all(20),
                  child: const Text('ยืนยันการชำระเงิน',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
