import 'package:flutter/material.dart';

class CardInfo {
  CardInfo({required this.url, required this.title});
  String url;
  String title;
}

List<CardInfo> cardList = [
  CardInfo(url: 'https://picsum.photos/id/1/200/300', title: 'title1'),
  CardInfo(url: 'https://picsum.photos/id/14/200/300', title: 'title4'),
  CardInfo(url: 'https://picsum.photos/id/43/200/300', title: 'title4'),
  CardInfo(url: 'https://picsum.photos/id/44/200/300', title: 'title4'),
];

class CustomCard extends StatelessWidget {
  // const CustomCard({Key? key}) : super(key: key);
  CustomCard(this.url, this.title);
  String url;
  String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network(
            url,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Text(title),
        ],
      ),
    );
  }
}
