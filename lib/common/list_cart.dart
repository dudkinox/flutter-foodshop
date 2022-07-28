import 'package:flutter/material.dart';

class ListCart extends StatelessWidget {
  final String number;
  final String name;
  final double price;

  const ListCart({
    Key? key,
    required this.name,
    required this.number,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name, style: const TextStyle(fontSize: 20)),
        Text(number, style: const TextStyle(fontSize: 20)),
        Text(price.toString(), style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}
