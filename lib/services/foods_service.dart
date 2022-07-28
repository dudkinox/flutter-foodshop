import 'dart:convert';

import '../http/client.dart';
import '../model/foods_model.dart';
import 'package:http/http.dart' as http;

Future<FoodsModel> foodsService(String type) async {
  final String url = "$host/food/?type=$type";
  final response = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  return FoodsModel.fromJson(jsonDecode(response.body));
}
