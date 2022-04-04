import 'package:flutter/material.dart';

Widget item(String identifierText) {
  return Column(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: Colors.red[600],
          border: const Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 5,
              style: BorderStyle.solid,
            ),
          ),
        ),
        height: 50,
        child: Center(
          child: Text(
            identifierText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 7, 167, 68),
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 5,
              style: BorderStyle.solid,
            ),
          ),
        ),
        height: 50,
        child: Center(
          child: Text(
            identifierText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 23, 20, 204),
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 5,
              style: BorderStyle.solid,
            ),
          ),
        ),
        height: 50,
        child: Center(
          child: Text(
            identifierText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  );
}
