// To parse this JSON data, do
//
//     final statusService = statusServiceFromJson(jsonString);

import 'dart:convert';

StatusModel statusServiceFromJson(String str) =>
    StatusModel.fromJson(json.decode(str));

String statusServiceToJson(StatusModel data) => json.encode(data.toJson());

class StatusModel {
  StatusModel({
    required this.status,
  });

  String status;

  factory StatusModel.fromJson(Map<String, dynamic> json) => StatusModel(
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
      };
}
