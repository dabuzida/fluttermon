/* 
# generic
자료구조 map, list, set 등을 이용할때, 
각 자료구조의 원소 하나에 대한 자료형을 정하는 것
dynamic, int, String 등등가능


-List 자료구조의 각 원소들의 자료형은 제한없음(dynamic)
List<dynamic> colors = new List.empty(growable: true);  List의 크기 가변 가능
List colors = new List.empty(growable: true);  List의 크기 가변 가능
List colors = []; 위와 동일
List colors = new List.empty(growable: false); List의 크기

-List 자료구조의 각 원소들의 자료형은 String
List<String> colors = new List.empty(growable: true);
 */

import 'dart:ffi';

void main() {
  List<String> footballEntry = new List.empty(growable: true);
  Set<int> primeNumber = {1, 2, 2, 2, 2, 5, 43, 21352345, 213423321, 2, 1};
  Map<String, double> sprinters = {
    "Bolt": 9.58,
    "Powell": 9.74,
    "Greene": 9.79,
    "Bailey": 9.84,
  };

  print(footballEntry);
  print(primeNumber);
  print(sprinters);

  List<Sprinter> sprintList = [
    Sprinter("Bolt", "Jamaica", 9.58, 1986),
    Sprinter("Gay", "U.S.A", 9.69, 1982),
    // Sprinter("Blake", "Jamaica", 9.69, 1989),
    // Sprinter("Powell", "Jamaica", 9.72, 1982),
  ];
  print(sprintList);
}

class Sprinter {
  String? name;
  String? nationality;
  double? record;
  int? birth;

  Sprinter(String s, String t, double d, int i);
}





// void main() {
// List<int> primeNumbers = new List.empty(growable: true);
// List<String> colors = new List.empty(growable: true);
// List<dynamic> any = new List.empty(growable: true);
// primeNumbers.add(23);
// any.addAll([
//   'sdfdsfds',
//   23,
//   "dfdf",
//   [1, 2, 3, 5],
//   {"name": 'lee', "age": 32}
// ]);

// print(primeNumbers);
// print(colors);
// print(any);

// var greeting = "Hello";
// var person = "Rohan";
// const num = 22;
// print("${greeting}, ${person}!"); // prints "Hello, Rohan!"
// print("$greeting, $person!"); // prints "Hello, Rohan!"
// print('$num+3333'); // prints "Hello, Rohan!"
// print("$num+33"); // prints "Hello, Rohan!"
// print("${num + 22}+4894894894"); // prints "Hello, Rohan!"
// }

// 100m 선수로 만들어보자
/* void main() {
  var circleSlot = Slot<Circle>();
  circleSlot.insert(Circle());
  var squareSlot = Slot<Square>();
  squareSlot.insert(Square());
  // circleSlot.insert();


}

class Circle {}

class Square {}

class Slot<T> {
  var name;
  insert(T shape) {
    name = shape;
    print(name);
  }
} */



