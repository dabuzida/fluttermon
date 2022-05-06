import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Lavoratery extends StatefulWidget {
  const Lavoratery({Key? key}) : super(key: key);

  @override
  State<Lavoratery> createState() => _LavorateryState();
}

class Json {
  late String userId;
  late String id;
  late String title;
  late String body;
  // Json({required this.userId, required this.id, required this.title, required this.body});
  Json.fromJson(Map<String, dynamic> json) {
    userId = json['userId'].toString();
    id = json['id'].toString();
    title = json['title'];
    body = json['body'];
  }
}

class _LavorateryState extends State<Lavoratery> {
  late List<Json> jsonTransformed;
  // late Json json;

  bool flag = false;
// print(jsonListString);
//   List jsonObjectList = jsonDecode(jsonListString);
//   print(jsonObjectList);
//   List<User> jsonInstanceList = jsonObjectList.map((e) => User.ivi(e)).toList();
//   print(jsonInstanceList);

  requestData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    await Future.delayed(const Duration(seconds: 1));
    if (response.statusCode == 200) {
      String jsonRawData = response.body;
      List jsonList = jsonDecode(jsonRawData);
      print(jsonList[0]);
      print(jsonList.runtimeType);

      jsonTransformed = jsonList.map((e) => Json.fromJson(e)).toList();
      print(jsonTransformed);
      print(jsonTransformed.runtimeType);
      // jsonList = list.map((e) => Json.fromJson(e)).toList();
      // print(jsonList);

      setState(() {
        flag = true;
      });
    } else {
      throw Exception('Failed to load post');
    }

    // Future.delayed(Duration(seconds: 3), () {
    //   flag = true;
    //   setState(() {});
    // });
  }

  @override
  void initState() {
    super.initState();
    requestData();
  }

  @override
  Widget build(BuildContext context) {
    if (flag == false) {
      return Image.network('https://c.tenor.com/7NX24XoJX0MAAAAC/loading-fast.gif');
    } else {
      return ListView.builder(
        itemCount: jsonTransformed.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(jsonTransformed[index].userId),
            title: Text(jsonTransformed[index].title),
            subtitle: Text(jsonTransformed[index].body),
            trailing: Text(jsonTransformed[index].id),
          );
        },
      );
    }
  }
}
