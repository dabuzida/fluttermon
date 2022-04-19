import 'package:flutter/material.dart';

/* 

수식을 쓸때, 첫번째 혹은 두번째 수 입력 시, 
0을 입력 후, 다른 수(1~9)를 누르면 변경되며, acceptor[0] 혹은 acceptor[2]의 값도 0에서 다른 수로 바뀌어야한다
  var acceptor = [null, null, null]; 선언후
  acceptor.add 함수 안쓰고 acceptor[0] 이런식으로 접근해야


첫번째숫자만 다쓰고 = 누를때도 첫번째 숫자 출력되도록

 */
class Calculator2 extends StatefulWidget {
  const Calculator2({Key? key}) : super(key: key);

  @override
  State<Calculator2> createState() {
    print('Calculator2()');
    return _Calculator2State();
  }
}

class _Calculator2State extends State<Calculator2> {
  String equation = '';
  String output = '0';
  double result = 0;
  double? tempMemory;
  // var acceptor = [];
  var acceptor = new List.filled(3, null, growable: false);

  @override
  Widget build(BuildContext context) {
    // print('_CalculatorState()');
    return Center(
      child: SizedBox(
        width: 600,
        height: 600,
        child: Container(
          color: Color.fromARGB(255, 204, 201, 201),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
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
                        Text(output, style: const TextStyle(fontSize: 50)),
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
            // print(11);
            switch (sign) {
              case '+':
                {
                  if (acceptor.length == 2) {
                    acceptor[1] = '+';
                    equation = output + '+';
                    break;
                  }
                  if (tempMemory != null) {
                    output = tempMemory.toString();
                    equation = output + '+';
                    acceptor.addAll([tempMemory, '+']);
                    break;
                  }
                  equation = output + '+';
                  acceptor.add('+');
                  break;
                }
              case '-':
                {
                  if (acceptor.length == 2) {
                    acceptor[1] = '-';
                    equation = output + '-';
                    break;
                  }
                  if (tempMemory != null) {
                    output = tempMemory.toString();
                    equation = output + '-';
                    acceptor.addAll([tempMemory, '-']);
                    break;
                  }
                  equation = output + '-';
                  acceptor.add('-');
                  break;
                }
              case '×':
                {
                  if (acceptor.length == 2) {
                    acceptor[1] = '×';
                    equation = output + '×';
                    break;
                  }
                  if (tempMemory != null) {
                    output = tempMemory.toString();
                    equation = output + '×';
                    acceptor.addAll([tempMemory, '×']);
                    break;
                  }
                  equation = output + '×';
                  acceptor.add('×');
                  break;
                }
              case '÷':
                {
                  if (acceptor.length == 2) {
                    acceptor[1] = '÷';
                    equation = output + '÷';
                    break;
                  }
                  if (tempMemory != null) {
                    output = tempMemory.toString();
                    equation = output + '÷';
                    acceptor.addAll([tempMemory, '÷']);
                    break;
                  }
                  equation = output + '÷';
                  acceptor.add('÷');
                  break;
                }
              case 'C':
                output = '0';
                equation = '';
                result = 0;
                tempMemory = null;
                acceptor = [];
                break;
              case '=':
                equal(acceptor);
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
            if (acceptor.length == 0 /* || acceptor[0] == 0 */) {
              print('1');
              equation = '';
              tempMemory = null;
              output = number;
              // acceptor[0] = _number;
              acceptor.add(_number);
            } else if (acceptor.length == 1 && acceptor[0] != 0 /* && acceptor[0] != 0 */) {
              print('2');
              output += number;
              acceptor[0] = double.parse(output);
            } else if (acceptor.length == 2) {
              print('3');
              output = number;
              acceptor.add(_number);
            } else if (acceptor.length == 3 && acceptor[2] != 0) {
              print('4');
              output += number;
              acceptor[2] = double.parse(output);
            }

            /* else {
              print('5');
              // clear();
              equation = '';
              acceptor = [];
              output = number;
              acceptor.add(_number);
            } */
          })
        },
      ),
    ));
  }

  void equal(var array) {
    double num1 = array[0];
    String sign = array[1];
    double num2 = array[2];
    switch (sign) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '×':
        result = num1 * num2;
        break;
      case '÷':
        result = num1 / num2;
        break;
      default:
    }
    equation += num2.toString();
    output = result.toString();
    tempMemory = result;
    acceptor = [];
  }

  /*  void clear() {
    setState(() {
      output = '0';
      equation = '';
      result = 0;
      acceptor = [];
    });
  } */

  /*  void add(double prevVal, double currVal) {
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
  } */
}
