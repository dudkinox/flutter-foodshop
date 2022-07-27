// To parse this JSON data, do
//
//     final statusService = statusServiceFromJson(jsonString);

import 'dart:convert';

StatusService statusServiceFromJson(String str) =>
    StatusService.fromJson(json.decode(str));

String statusServiceToJson(StatusService data) => json.encode(data.toJson());

class StatusService {
  StatusService({
    required this.status,
  });

  String status;

  factory StatusService.fromJson(Map<String, dynamic> json) => StatusService(
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
      };
}
