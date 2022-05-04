import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Laboratory extends StatefulWidget {
  const Laboratory({Key? key}) : super(key: key);

  @override
  State<Laboratory> createState() => _LaboratoryState();
}

//  { "userId": 1,
//     "id": 9,
//     "title": "nesciunt iure omnis dolorem tempora et accusantium",
//     "body": "consectetur autem voluptas"}
class Json {
  late int userId;
  late int id;
  late String title;
  late String body;
  // Json({required this.userId, required this.id, required this.title, required this.body});

  Json.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
  /* factory Json.fromJson(Map<String, dynamic> json) {
    return Json(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  } */
}

Future<List<Json>> fetchPost() async {
  await Future.delayed(const Duration(seconds: 1));
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  // final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
    List list = jsonDecode(response.body);
    List<Json> jsonList = list.map((e) => Json.fromJson(e)).toList();
    return jsonList;
    // return Json.fromJson(json.decode(response.body));
  } else {
    // 만약 요청이 실패하면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}

////////////////////////////////////////////////////////////////////
class _LaboratoryState extends State<Laboratory> {
  // final Future<String> _calculation = Future<String>.delayed(
  //   const Duration(seconds: 2),
  //   () => 'Data Loaded',
  // );

  Future<List<Json>>? json;
  // List<Json>? json; // 왜 이걸로 선언해야하지 않나?

  @override
  void initState() {
    super.initState();
    json = fetchPost(); // fetchPost 리턴은 List<Json>타입
  }
  // Future<http.Response> fetchPost() {
  //   return http.get('https://jsonplaceholder.typicode.com/posts/1');
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   Future<List<
  // }
  // https://jsonplaceholder.typicode.com/posts

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 600,
      height: 600,
      child: FutureBuilder<List<Json>>(
        future: json, // a previously-obtained Future<String> or null
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Json json = snapshot.data![index];
                  return Card(child: ListTile(title: Text(json.title)));
                });

            // Text(snapshot.data.);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // 기본적으로 로딩 Spinner를 보여줍니다.
          // return const CircularProgressIndicator();
          return Image.network('https://previews.123rf.com/images/sundatoon/sundatoon1607/sundatoon160700027/61127080-sourire-singe-gratter-la-t%C3%AAte.jpg');
        },
      ),
    );
  }
}
