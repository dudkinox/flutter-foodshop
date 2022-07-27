// To parse this JSON data, do
//
//     final categoryFoods = categoryFoodsFromJson(jsonString);

import 'dart:convert';

List<CategoryFoods> categoryFoodsFromJson(String str) =>
    List<CategoryFoods>.from(
        json.decode(str).map((x) => CategoryFoods.fromJson(x)));

String categoryFoodsToJson(List<CategoryFoods> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryFoods {
  CategoryFoods({
    required this.label,
    required this.image,
  });

  String label;
  String image;

  factory CategoryFoods.fromJson(Map<String, dynamic> json) => CategoryFoods(
        label: json["label"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "image": image,
      };
}
