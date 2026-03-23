import 'dart:convert';

// import 'package:bionica_vita_5/functions/password_service.dart';
import 'package:http/http.dart' as http;

Future<dynamic> requestAuth() async {
  final response = await http.get(Uri.parse('http://127.0.0.1:8080/auth'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print(data);
    return data['users'];
  } else {
    print('Ошибка: ${response.statusCode}');
  }
  //   final data = jsonDecode(response.body);
  //   // print('data');
  //   print(response.headers['content-type']);
  //   print(response.body);
  //   Map userAuth;
  //   data.forEach((user) {
  //     if (PasswordService.verifyPassword(password, user['password'])) {
  //       userAuth = user;
  //       print('userAuth');
  //       print(userAuth);
  //     }
  //   });
  // } else {
  //   print('Ошибка: ${response.statusCode}');
  // }
}
