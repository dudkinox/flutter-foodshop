import 'dart:convert';
import 'dart:io';

import '../http/client.dart';
import '../model/customer_model.dart';
import 'package:http/http.dart' as http;

import '../model/status_model.dart';

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

Future<StatusModel> registerService(
  String name,
  String sur,
  String email,
  String password,
  String address,
  String phone,
  File image,
) async {
  try {
    final String url =
        "$host/register/?name=$name&sur=$sur&email=$email&password=$password&address=$address&phone=$phone";
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('image', image.path));
    request.headers.addAll({
      'Access-Control-Allow-Origin': '*',
      'Content-Type': 'multipart/form-data; charset=UTF-8',
    });
    request.send();

    return StatusModel(status: 'success');
  } catch (e) {
    return StatusModel(status: 'fail');
  }
}
