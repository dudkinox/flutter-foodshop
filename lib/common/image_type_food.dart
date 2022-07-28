// ignore_for_file: prefer_if_null_operators

import 'package:flutter/material.dart';

class ImageFoodType extends StatelessWidget {
  final String type;
  final double? width;
  final double? height;
  const ImageFoodType({Key? key, required this.type, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      type == "T0001"
          ? "assets/images/joke.jpg"
          : type == "T0002"
              ? "assets/images/yum.jpg"
              : type == "T0003"
                  ? "assets/images/water.jpg"
                  : "assets/images/steak.jpg",
      fit: width == null ? BoxFit.cover : null,
      width: width != null ? width : null,
      height: height != null ? height : null,
    );
  }
}
