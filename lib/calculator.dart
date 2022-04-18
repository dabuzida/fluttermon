import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() {
    print('Calculator() -> createState()');
    return _CalculatorState();
  }
}

class _CalculatorState extends State<Calculator> {
  String output = '0';
  String equation = '';
  double result = 0;

  @override
  Widget build(BuildContext context) {
    print('_CalculatorState()');
    return Center(
      child: SizedBox(
        width: 600,
        height: 600,
        child: Container(
          color: const Color.fromARGB(183, 226, 226, 226),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('수식'),
                        Text(equation, style: const TextStyle(fontSize: 50)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('결과'),
                        Text('$output', style: const TextStyle(fontSize: 50)),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    createOperationBtn('.', 'decimal fraction'),
                    createOperationBtn('+', 'add'),
                    createOperationBtn('-', 'decimal fraction'),
                    createOperationBtn('×', 'decimal fraction'),
                    createOperationBtn('÷', 'decimal fraction'),
                    createOperationBtn('C', 'clear'),
                    createOperationBtn('=', 'decimal fraction'),
                  ],
                ),
              ),
              Expanded(
                  child: Row(children: <Widget>[
                createNumberBtn(1, '1', 'pass_1'),
                createNumberBtn(2, '2', 'pass_2'),
                createNumberBtn(3, '3', 'pass_3'),
                createNumberBtn(4, '4', 'pass_4'),
                createNumberBtn(5, '5', 'pass_5'),
              ])),
              Expanded(
                  child: Row(children: <Widget>[
                createNumberBtn(6, '6', 'pass_6'),
                createNumberBtn(7, '7', 'pass_7'),
                createNumberBtn(8, '8', 'pass_8'),
                createNumberBtn(9, '9', 'pass_9'),
                createNumberBtn(0, '0', 'pass_0'),
              ])),
            ],
          ),
        ),
      ),
    );
  }

  Widget createOperationBtn(String sign, String operation) {
    return Expanded(
        child: SizedBox(
      height: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(230, 226, 226, 226),
            textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            )),
        child: Text(sign, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 0, 0, 0))),
        onPressed: () => {
          setState(() {
            String lastChar = equation.substring(equation.length - 1);
            switch (sign) {
              case '+':
                {
                  if (lastChar != '+' && lastChar != '-' && lastChar != '×' && lastChar != '÷')
                    setState(() {
                      equation = output + '+';
                    });
                }
                break;
              case '-':
                clear();
                break;
              case '×':
                clear();
                break;
              case '÷':
                clear();
                break;
              case 'C':
                setState(() {
                  output = '0';
                  equation = '';
                  result = 0;
                });
                break;
              case '=':
                output = result.toString();
                break;
              default:
            }
          })
        },
      ),
    ));
  }

  Widget createNumberBtn(double _number, String number, String operation) {
    return Expanded(
        child: SizedBox(
      height: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        child: Text(number, style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        onPressed: () => {
          setState(() {
            print('add');
            if (output == '0') {
              output = '';
            }
            output += number;
            result = double.parse(output);
            print(result);
          })
        },
      ),
    ));
  }

  void clear() {
    setState(() {
      output = '0';
      equation = '';
      result = 0;
    });
  }

  void equal() {
    setState(() {
      // equation = ;
      output = result.toString();
    });
  }

  void add(double prevVal, double currVal) {
    setState(() {});
  }

  void subtract(double prevVal, double currVal) {
    print('subtract');
    setState(() {
      //result = prevVal - currVal;
    });
  }

  void multiply(double prevVal, double currVal) {
    print('multiply');
    setState(() {
      //result = prevVal * currVal;
    });
  }

  void divide(double prevVal, double currVal) {
    print('divide');
    setState(() {
      // result = prevVal / currVal;
    });
  }
}
