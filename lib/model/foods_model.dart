// To parse this JSON data, do
//
//     final foodsService = foodsServiceFromJson(jsonString);

import 'dart:convert';

FoodsModel foodsServiceFromJson(String str) =>
    FoodsModel.fromJson(json.decode(str));

String foodsServiceToJson(FoodsModel data) => json.encode(data.toJson());

class FoodsModel {
  FoodsModel({
    required this.type,
    required this.data,
  });

  String type;
  List<Datum> data;

  factory FoodsModel.fromJson(Map<String, dynamic> json) => FoodsModel(
        type: json["type"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.foodId,
    required this.foodName,
    required this.foodPrice,
    required this.foodImg,
    required this.foodStatus,
  });

  String foodId;
  String foodName;
  int foodPrice;
  String foodImg;
  String foodStatus;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        foodId: json["food_id"],
        foodName: json["food_name"],
        foodPrice: json["food_price"],
        foodImg: json["food_img"],
        foodStatus: json["food_status"],
      );

  Map<String, dynamic> toJson() => {
        "food_id": foodId,
        "food_name": foodName,
        "food_price": foodPrice,
        "food_img": foodImg,
        "food_status": foodStatus,
      };
}
