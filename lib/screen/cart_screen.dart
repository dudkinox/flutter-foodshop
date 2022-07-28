import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../common/list_cart.dart';
import '../model/cart_model.dart';
import '../services/shopping_service.dart';

class CartScreen extends StatefulWidget {
  final String cusId;
  const CartScreen({Key? key, required this.cusId}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  File? fileImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder<CartListModel>(
          future: cartService(widget.cusId),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              CartListModel response = snapshot.data;
              print(widget.cusId);
              print(response);

              return Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text('สรุปคำสั่งซื้อ',
                        style: TextStyle(fontSize: 20)),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('รายการอาหาร', style: TextStyle(fontSize: 20)),
                        Text('จำนวน', style: TextStyle(fontSize: 20)),
                        Text('ราคา', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    for (int i = 0; i < response.data.length; i++)
                      ListCart(
                        name: response.data[i].nameOrder,
                        number: response.data[i].number,
                        price: double.parse(response.data[i].number) *
                            double.parse(response.data[i].priceOrder),
                      ),
                    const SizedBox(height: 20),
                    Text("ราคารวมสุทธิ ${response.total} บาท",
                        style: const TextStyle(fontSize: 30)),
                    const Text('วิธีการชำระเงิน',
                        style: TextStyle(fontSize: 20)),
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
                        child: const Text(
                          'ยืนยันการชำระเงิน',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const LinearProgressIndicator();
            }
          }),
    );
  }
}
