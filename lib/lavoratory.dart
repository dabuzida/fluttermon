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
  // Json({required this.userId, required this.id, required this.title, required this.body});

  Json.fromJson(Map<String, dynamic> json) {
    print('----- Json.fromJson -----');
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}

Future<Json> fetchPost() async {
  print('----- Future<Json> fetchPost() async -----');
  // await Future.delayed(const Duration(seconds: 2));
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  // await Future.delayed(const Duration(seconds: 2));
  if (response.statusCode == 200) {
    return Json.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class _LavoratoryState extends State<Lavoratory> {
  late Json json;
  late int userId;
  late int id;
  late String title;
  late String body;
  bool flag = false;

  requestData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    await Future.delayed(const Duration(seconds: 2));
    if (response.statusCode == 200) {
      json = Json.fromJson(jsonDecode(response.body));
      userId = json.userId;
      id = json.id;
      title = json.title;
      body = json.body;
      setState(() {
        flag = true;
      });
    } else {
      throw Exception('Failed to load post');
    }

    Future.delayed(Duration(seconds: 3), () {
      flag = true;
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    print('----- initState() -----');
    requestData();
  }

  @override
  Widget build(BuildContext context) {
    print('----- Widget build(BuildContext context) -----');
    // Future.delayed(const Duration(milliseconds: 500), () {
    //   // Here you can write your code
    //   // print('monkey');
    //   setState(() {
    //     // print('shark');
    //     // Here you can write your code for open new view
    //   });
    // });

    if (flag == false) {
      // return CircularProgressIndicator();
      return Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/fs/b6e0b072897469.5bf6e79950d23.gif');
    } else {
      return Center(
        child: ListTile(
          leading: Text(userId.toString()),
          title: Text(title),
          subtitle: Text(body),
          trailing: Text(id.toString()),
        ),
      );
    }
  }
}

Future<String> fetchUserOrder() => Future.delayed(const Duration(seconds: 2), () => 'Large Latte');
// Future<int> receipt() => Future.delayed(const Duration(seconds: 1), () => 81);
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}
