import 'dart:convert';

import '../http/client.dart';
import '../model/customer_model.dart';
import 'package:http/http.dart' as http;

Future<CustomerService> loginService(String username, String password) async {
  final String url = "$host/login?username=$username&password=$password";
  final response = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  return CustomerService.fromJson(jsonDecode(response.body));
}
