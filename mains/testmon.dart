void main() {
  List<int> primeNumbers = new List.empty(growable: true);
  List<String> colors = new List.empty(growable: true);
  List<dynamic> any = new List.empty(growable: true);
  primeNumbers.add(23);
  any.addAll([
    'sdfdsfds',
    23,
    "dfdf",
    [1, 2, 3, 5],
    {"name": 'lee', "age": 32}
  ]);

  print(primeNumbers);
  print(colors);
  print(any);
}
