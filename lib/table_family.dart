import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TableFamily extends StatefulWidget {
  const TableFamily({Key? key}) : super(key: key);

  @override
  State<TableFamily> createState() => _TableFamilyState();
}

class _TableFamilyState extends State<TableFamily> {
  double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        // textBaseline: TextBaseline.alphabetic,
        textBaseline: TextBaseline.ideographic,
        // textDirection: TextDirection.ltr,
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(200),
          1: FixedColumnWidth(200),
          2: FixedColumnWidth(200),
          3: FixedColumnWidth(200),
          4: FixedColumnWidth(200),
          // 0: FlexColumnWidth(1),
          // 1: FlexColumnWidth(1),
          // 2: FlexColumnWidth(1),
          // 3: FlexColumnWidth(1),
          // 4: FlexColumnWidth(1),
        },
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            TableCell(verticalAlignment: TableCellVerticalAlignment.bottom, child: Text('apple')),
            Icon(Icons.account_box, size: iconSize),
            TableCell(verticalAlignment: TableCellVerticalAlignment.fill, child: Text('meerkat')),
            Icon(Icons.lightbulb_outline, size: iconSize),
            Icon(Icons.lightbulb_outline, size: iconSize),
          ]),
          TableRow(children: [
            TableCell(child: Text('banana')),
            Icon(Icons.cake, size: iconSize),
            Icon(Icons.voice_chat, size: iconSize),
            Icon(Icons.lightbulb_outline, size: iconSize),
            Icon(Icons.add_location, size: iconSize),
          ]),
          const TableRow(children: <Widget>[
            TableCell(verticalAlignment: TableCellVerticalAlignment.baseline, child: Text('baseline')),
            TableCell(verticalAlignment: TableCellVerticalAlignment.bottom, child: Text('bottom')),
            TableCell(verticalAlignment: TableCellVerticalAlignment.fill, child: Text('fill')),
            TableCell(verticalAlignment: TableCellVerticalAlignment.middle, child: Text('middle')),
            TableCell(verticalAlignment: TableCellVerticalAlignment.top, child: SizedBox(height: 40, child: Text('top'))),
          ]),
        ],
      ),
    );

    /* Table(
      children: [
        TableRow(
          children: <Widget>[
            Text('sdfsdf'),
            Text('sdfsdf'),
            Text('15334123121233123123'),
            Text('sdfsdf'),
            TableCell(
              child: Text('dd'),
            ),
          ],
        ),
      ],
    ); */
  }
}
