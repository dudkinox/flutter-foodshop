// To parse this JSON data, do
//
//     final customerService = customerServiceFromJson(jsonString);

import 'dart:convert';

CustomerService customerServiceFromJson(String str) =>
    CustomerService.fromJson(json.decode(str));

String customerServiceToJson(CustomerService data) =>
    json.encode(data.toJson());

class CustomerService {
  CustomerService({
    required this.status,
    required this.cusId,
    required this.cusName,
    required this.cusSur,
    required this.cusEmail,
    required this.cusPassword,
    required this.cusAddress,
    required this.cusPhone,
    required this.cusProfile,
  });

  String status;
  String cusId;
  String cusName;
  String cusSur;
  String cusEmail;
  String cusPassword;
  String cusAddress;
  String cusPhone;
  String cusProfile;

  factory CustomerService.fromJson(Map<String, dynamic> json) =>
      CustomerService(
        status: json["status"],
        cusId: json["cus_id"],
        cusName: json["cus_name"],
        cusSur: json["cus_sur"],
        cusEmail: json["cus_email"],
        cusPassword: json["cus_password"],
        cusAddress: json["cus_address"],
        cusPhone: json["cus_phone"],
        cusProfile: json["cus_profile"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "cus_id": cusId,
        "cus_name": cusName,
        "cus_sur": cusSur,
        "cus_email": cusEmail,
        "cus_password": cusPassword,
        "cus_address": cusAddress,
        "cus_phone": cusPhone,
        "cus_profile": cusProfile,
      };
}
