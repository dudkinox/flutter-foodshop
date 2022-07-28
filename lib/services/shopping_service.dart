import 'dart:convert';
import 'dart:io';

import '../http/client.dart';
import 'package:http/http.dart' as http;

import '../model/cart_model.dart';
import '../model/status_model.dart';

Future<StatusModel> shoppingService(String orderQuantity, String orderTotal,
    String orderDetails, String cusId, String foodId, File image) async {
  try {
    final String url =
        "$host/shopping/?Order_Quantity=$orderQuantity&Order_total=$orderTotal&Order_details=$orderDetails&Cus_id=$cusId&Food_id=$foodId";
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

Future<StatusModel> orderService(
  String cusId,
  String number,
  String nameOrder,
  String detailOrder,
  String typeOrder,
  String priceOrder,
) async {
  final String url =
      "$host/order/?Cus_id=$cusId&Number=$number&Name_order=$nameOrder&Detail_order=$detailOrder&Type_order=$typeOrder&Price_order=$priceOrder";
  final response = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  return StatusModel.fromJson(jsonDecode(response.body));
}

Future<CartListModel> cartService(String cusId) async {
  final String url = "$host/cart/?cus_id=$cusId";
  final response = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  return CartListModel.fromJson(jsonDecode(response.body));
}
