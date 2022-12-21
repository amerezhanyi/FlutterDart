import 'package:types/types.dart' as types;

void printInt(List<int> a) => print(a);

void main() {
  print('Hello world: ${types.calculate()}!');

  final list = <int>[];
  list.add(1);
  list.add(2);
  printInt(list);

  var arguments = {'argA': 'hello', 'argB': 42}; // Map<String, Object>
  print(">>> $arguments");

  num y = 3; // A num can be double or int.
  y = 4.0;
  print(">>> $y");
}
