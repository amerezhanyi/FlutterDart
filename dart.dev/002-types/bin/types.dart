import 'package:types/types.dart' as types;

void printInt(List<int> a) => print(a);
void main(List<String> arguments) {
  print('Hello world: ${types.calculate()}!');

  final list = [];
  list.add(1);
  list.add('2');
  printInt(list);
}
