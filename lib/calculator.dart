import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() {
    // print('Calculator() -> createState()');
    return _CalculatorState();
  }
}

class _CalculatorState extends State<Calculator> {
  String equation = '';
  String output = '0';
  double result = 0;
  double? tempMemory;
  bool flag = true; // 정의되지 않음 출력시  숫자나, C 제외 버튼을 막고, 숫자와 C만 누르게 유도하기위함
  var acceptor = <dynamic>[0];
  // var acceptor = [null, null, null];

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
                        Text(output, style: const TextStyle(fontSize: 30)),
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
            if (sign == 'C') {
              flag = true;
              // 0/0 같은 정의되지 않은 결과입니다 를 결과로 가질때
              // C 혹은 숫자만 누를수있게 함
            }
            if (acceptor.length == 3) {
              equal(acceptor);
            }
            if (flag) {
              switch (sign) {
                case '+':
                  {
                    if (acceptor.length == 2) {
                      acceptor[1] = '+';
                      print(acceptor);
                      equation = output + '+';
                      break;
                    }
                    if (tempMemory != null) {
                      output = tempMemory.toString();
                      equation = output + '+';
                      acceptor.addAll([tempMemory, '+']);
                      print(acceptor);
                      break;
                    }
                    equation = output + '+';
                    // acceptor[1] = '+';
                    acceptor.add('+');
                    print(acceptor);
                    break;
                  }
                case '-':
                  {
                    if (acceptor.length == 2) {
                      acceptor[1] = '-';
                      print(acceptor);
                      equation = output + '-';
                      break;
                    }
                    if (tempMemory != null) {
                      output = tempMemory.toString();
                      equation = output + '-';
                      acceptor.addAll([tempMemory, '-']);
                      print(acceptor);
                      break;
                    }
                    equation = output + '-';
                    acceptor.add('-');
                    print(acceptor);
                    break;
                  }
                case '×':
                  {
                    if (acceptor.length == 2) {
                      acceptor[1] = '×';
                      print(acceptor);
                      equation = output + '×';
                      break;
                    }
                    if (tempMemory != null) {
                      output = tempMemory.toString();
                      equation = output + '×';
                      acceptor.addAll([tempMemory, '×']);
                      print(acceptor);
                      break;
                    }
                    equation = output + '×';
                    acceptor.add('×');
                    print(acceptor);
                    break;
                  }
                case '÷':
                  {
                    if (acceptor.length == 2) {
                      acceptor[1] = '÷';
                      print(acceptor);
                      equation = output + '÷';
                      break;
                    }
                    if (tempMemory != null) {
                      output = tempMemory.toString();
                      equation = output + '÷';
                      acceptor.addAll([tempMemory, '÷']);
                      print(acceptor);
                      break;
                    }
                    equation = output + '÷';
                    acceptor.add('÷');
                    print(acceptor);
                    break;
                  }
                case 'C':
                  output = '0';
                  equation = '';
                  result = 0;
                  tempMemory = null;
                  acceptor = [0];
                  print(acceptor);
                  break;
                case '=':
                  equal(acceptor);
                  print(acceptor);
                  break;
                default:
              }
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
            print('start');
            /* 계산기 사용 과정이 '숫자 1개 입력 > 연산 선택 > 숫자 1개 입력 > '=' 눌러서 결과보기'인데
            숫자 1개 입력에 대한 처리 */
            if (acceptor.length == 1 && acceptor[0] == 0 && number != '0') {
              // 처음 숫자를 받을때, 항상 acceptor는 0이 들어가 있는 상태를 고려해야함
              // acceptor[0]이 0이고, 0대신 1~9입력하고 싶을때
              // (a조건 && b조건) 판별시 a조건에서 false면 b조건은 판별하지 않고 끝남
              print('1');
              equation = '';
              tempMemory = null;
              output = number;
              acceptor[0] = _number;
            } else if (acceptor.length == 0 && tempMemory != null) {
              // 연산 cycle을 한번 돈후, 이전결과값 재사용 하지않고 갱신후 새로운 첫번째 숫자를 받음
              print('2');
              equation = '';
              tempMemory = null;
              output = number;
              acceptor.add(_number);
            } else if (acceptor.length == 1 && acceptor[0] != 0) {
              // 0이아닌 원소 1개가 들어가 있을때, 숫자를 눌러 그 뒤에 덧붙일때
              print('3');
              output += number;
              acceptor[0] = double.parse(output);
            } else if (acceptor.length == 2) {
              // [숫자, 연산]상황에서 두번째 숫자를 입력
              print('4');
              output = number;
              acceptor.add(_number);
            } else if (acceptor.length == 3 && acceptor[2] != 0) {
              // acceptor[2]이 0이 아닐때, 추가숫자를 덧붙일때
              print('5');
              output += number;
              acceptor[2] = double.parse(output);
            } else if (acceptor.length == 3 && acceptor[2] == 0 && number != '0') {
              // acceptor[2]이 0이고, 0대신 1~9입력하고 싶을때
              print('6');
              output = number;
              acceptor[2] = _number;
            } else if (acceptor.length == 0 && flag == false) {
              // 정의되지 않음 출력시, 상황이 acceptor=[]에 flag=false임
              print('7');
              equation = '';
              output = number;
              acceptor.add(_number);
              flag = true;
            }
            print('end>> $acceptor');
          })
        },
      ),
    ));
  }

  void equal(var array) {
    if (array.length == 1) {
      //[숫자]
      result = array[0];
      equation = result.toString() + '=';
      output = result.toString();
      print('결과는: $output');
      tempMemory = result;
      acceptor = [];
    } else if (array.length == 2) {
      // [숫자, 연산기호]
      double num = array[0];
      String sign = array[1];
      switch (sign) {
        case '+':
          result = num + num;
          break;
        case '-':
          result = num - num;
          break;
        case '×':
          result = num * num;
          break;
        case '÷':
          result = num / num;
          break;
        default:
      }
      /* 
        result가 NaN이면, 정의되지 않은 수라고 출력 
        NaN이 아니면, 그대로 출력
        + 뒤처리(바로 연산은 못누름, =누르면 [0]상태, 숫자누르면 [누른숫자]) 
      */
      if (result.isNaN) {
        output = '정의되지 않은 결과입니다.';
        flag = false;
        tempMemory = null;
        acceptor = [];
      } else if (result.isInfinite) {
        output = '0으로 나눌 수 없습니다.';
        flag = false;
        tempMemory = null;
        acceptor = [];
      } else {
        equation += num.toString() + '=';
        output = result.toString();
        print('결과는: $output');
        tempMemory = result;
        acceptor = [];
      }
    } else if (array.length == 3) {
      // [숫자, 연산기호, 숫자]
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

      if (result.isNaN) {
        output = '정의되지 않은 결과입니다.';
        flag = false;
        tempMemory = null;
        acceptor = [];
      } else if (result.isInfinite) {
        output = '0으로 나눌 수 없습니다.';
        flag = false;
        tempMemory = null;
        acceptor = [];
      } else {
        equation += num2.toString() + '=';
        output = result.toString();
        print('결과는: $output');
        tempMemory = result;
        acceptor = [];
      }
    }
  }
}
