import 'dart:convert';

import 'package:bionica_vita_5/DB/dataClass/staff_data.dart';
import 'package:http/http.dart' as http;

Future<dynamic> requestAuth() async {
  final response = await http.get(Uri.parse('http://127.0.0.1:8080/auth'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    // print(data);
    return data['users'];
  } else {
    print('Ошибка: ${response.statusCode}');
  }
}

Future<void> requestCreateUser(StaffData staff) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:8080/staff_create_user'),
    headers: {'Content-Type': 'application/json'},
    // body: jsonEncode({"user": staff.toJson()}),
    // body: jsonDecode(staff.toJson()),
    body: jsonEncode({"user": staff.toMap()}), //staff.toJson(),
  );

  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('Ошибка: ${response.statusCode}');
    return null;
  }

}
