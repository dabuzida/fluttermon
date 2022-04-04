import 'package:flutter/material.dart';

class Test3 extends StatelessWidget {
  Test3({Key? key}) : super(key: key);
  String _1vs1 = 'https://cglink.com/files/attach/images/1589/713/001/UV.Grid.jpg';
  String _2vs3 = 'https://images.unsplash.com/photo-1534237710431-e2fc698436d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnVpbGRpbmd8ZW58MHx8MHx8&w=1000&q=80';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Expanded(
        child: Image(
          image: NetworkImage(_1vs1),
        ),
      ),
    );
  }
}
