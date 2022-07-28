import 'dart:convert';

import '../http/client.dart';
import '../model/activity_model.dart';
import 'package:http/http.dart' as http;

Future<ActivityListModel> activityService(String cusId, String option) async {
  final String url = "$host/activity/?option=$option&cus_id=$cusId";
  final response = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  return ActivityListModel.fromJson(jsonDecode(response.body));
}
