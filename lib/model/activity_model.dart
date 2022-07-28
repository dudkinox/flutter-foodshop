// To parse this JSON data, do
//
//     final activityListModel = activityListModelFromJson(jsonString);

import 'dart:convert';

ActivityListModel activityListModelFromJson(String str) =>
    ActivityListModel.fromJson(json.decode(str));

String activityListModelToJson(ActivityListModel data) =>
    json.encode(data.toJson());

class ActivityListModel {
  ActivityListModel({
    required this.status,
    required this.cusId,
    required this.total,
    required this.data,
  });

  String status;
  String cusId;
  String total;
  List<Datum> data;

  factory ActivityListModel.fromJson(Map<String, dynamic> json) =>
      ActivityListModel(
        status: json["status"],
        cusId: json["cus_id"],
        total: json["total"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "cus_id": cusId,
        "total": total,
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
        number: json["number"],
        nameOrder: json["name_order"],
        detailOrder: json["detail_order"],
        typeOrder: json["type_order"],
        priceOrder: json["price_order"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "name_order": nameOrder,
        "detail_order": detailOrder,
        "type_order": typeOrder,
        "price_order": priceOrder,
      };
}
