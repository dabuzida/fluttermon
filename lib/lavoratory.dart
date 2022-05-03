import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Lavoratory extends StatefulWidget {
  const Lavoratory({Key? key}) : super(key: key);

  @override
  State<Lavoratory> createState() => _LavoratoryState();
}

class Json {
  late int userId;
  late int id;
  late String title;
  late String body;
  Json({required this.userId, required this.id, required this.title, required this.body});

  Json.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}

Future<Json> fetchPost() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
    return Json.fromJson(json.decode(response.body));
  } else {
    // 만약 요청이 실패하면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}

class _LavoratoryState extends State<Lavoratory> {
  var d;
  Future<Json>? json;
  @override
  void initState() {
    super.initState();
    json = fetchPost(); // fetchPost 리턴은 List<Json>타입
    // d = createOrderMessage(); // fetchPost 리턴은 List<Json>타입
  }

  @override
  Widget build(BuildContext context) {
    print(d);
    print(json);
    return Center(
        // child: Text(d),
        );
  }
}

Future<String> fetchUserOrder() => Future.delayed(const Duration(seconds: 2), () => 'Large Latte');
// Future<int> receipt() => Future.delayed(const Duration(seconds: 1), () => 81);
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}
