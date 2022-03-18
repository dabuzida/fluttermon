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

void main() {
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
}

class Sports {
  Sports({this.name, this.number});
  String name;
  int number;
}
