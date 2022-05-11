import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableRoww extends StatefulWidget {
  const TableRoww({Key? key}) : super(key: key);

  @override
  State<TableRoww> createState() => _TableRowwState();
}

class _TableRowwState extends State<TableRoww> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Table(
      children: [
        TableRow(
          children: <Widget>[
            Text('sdfsdf'),
            Text('sdfsdf'),
            Text('15334123121233123123'),
            Text('sdfsdf'),
          ],
        ),
      ],
    ));
  }
}
