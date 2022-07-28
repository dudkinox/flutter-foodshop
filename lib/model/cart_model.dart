// To parse this JSON data, do
//
//     final cartListModel = cartListModelFromJson(jsonString);

import 'dart:convert';

CartListModel cartListModelFromJson(String str) =>
    CartListModel.fromJson(json.decode(str));

String cartListModelToJson(CartListModel data) => json.encode(data.toJson());

class CartListModel {
  CartListModel({
    required this.cusId,
    required this.total,
    required this.countOrder,
    required this.data,
  });

  String cusId;
  String total;
  String countOrder;
  List<Datum> data;

  factory CartListModel.fromJson(Map<String, dynamic> json) => CartListModel(
        cusId: json["cus_id"],
        total: json["total"],
        countOrder: json["count_order"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cus_id": cusId,
        "total": total,
        "count_order": countOrder,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.number,
    required this.nameOrder,
    required this.detailOrder,
    required this.typeOrder,
    required this.priceOrder,
  });

  String number;
  String nameOrder;
  String detailOrder;
  String typeOrder;
  String priceOrder;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        number: json["Number"],
        nameOrder: json["Name_order"],
        detailOrder: json["Detail_order"],
        typeOrder: json["Type_order"],
        priceOrder: json["Price_order"],
      );

  Map<String, dynamic> toJson() => {
        "Number": number,
        "Name_order": nameOrder,
        "Detail_order": detailOrder,
        "Type_order": typeOrder,
        "Price_order": priceOrder,
      };
}
