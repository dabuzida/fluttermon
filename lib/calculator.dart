import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double result = 0;
  double? x;
  double? y;

  void add(double p, double q) {
    setState(() {
      result = p + q;
    });
  }

  void subtract(double p, double q) {
    setState(() {
      result = p - q;
    });
  }

  void multiply(double p, double q) {
    setState(() {
      result = p * q;
    });
  }

  void divide(double p, double q) {
    setState(() {
      result = p / q;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 200,
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
                child: Text(
              'Display',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
            )),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.blueGrey,
            ),
            Expanded(
              child: Text(
                '$result',
              ),
            ),
            Row(
              children: <Widget>[
                createOperation('+', 'add'),
                createOperation('-', 'subtract'),
                createOperation('*', 'multiply'),
                createOperation('/', 'divide'),
                createOperation('C', 'divide'),
              ],
            ),
            Row(
              children: <Widget>[
                const Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),

                  /* Text(
                          'data',
                          textAlign: TextAlign.right,
                        ) */
                ),
                createOperation('=', 'divide'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget createOperation(String sign, String operation) {
    return Expanded(
        child: TextButton(
      style: TextButton.styleFrom(
        elevation: 10,
        backgroundColor: Colors.black45,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
      child: Text(
        sign,
        style: const TextStyle(color: Colors.white),
      ),
      onPressed: () => operation,
    ));
  }
}
