import 'package:flutter/material.dart';

import '../model/activity_model.dart';
import '../screen/activity_screen.dart';
import '../services/activity_service.dart';
import 'list_cart.dart';

class TabActivity extends StatelessWidget {
  final String option;
  const TabActivity({
    Key? key,
    required this.widget,
    required this.option,
  }) : super(key: key);

  final Activity widget;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ActivityListModel>(
      future: activityService(widget.cusId, option),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          ActivityListModel response = snapshot.data;
          return Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text('สรุปคำสั่งซื้อ', style: TextStyle(fontSize: 20)),
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
                    number: response.data[i].number,
                    name: response.data[i].nameOrder,
                    price: double.parse(response.data[i].priceOrder) *
                        double.parse(response.data[i].number),
                  ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('รวม', style: TextStyle(fontSize: 20)),
                    Text(
                      "${response.total} บาท",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: Text('ไม่มีรายการ'),
          );
        }
      },
    );
  }
}
