import 'package:tour/tour.dart' as tour;

void main(List<String> arguments) {
  print('Hello world: ${tour.calculate()}!');

  var number = 42; // Declare and initialize a variable.
  tour.printInteger(number); // Call a function.

  int lineCount;
  late String weLikeToCount;

  weLikeToCount = countInit();

  if (weLikeToCount == "3.14") {
    lineCount = countLines();
    // ignore: dead_code
  } else {
    lineCount = 0;
  }

  print(">>> $lineCount");

  var s = 'string interpolation';

  print("> Dart has $s, which is very handy." + lineCount.toString());
  print("""That deserves all caps. >"<
      "${s.toUpperCase()} is very handy!""");
  print(r"In a raw string, not even \n gets special treatment.");

  var list1 = const [
    'Car',
    'Boat',
    'Plane',
  ];
  var list2 = ['iodine', ...list1];
  bool isMonday = false;
  var list3 = [...list1, if (isMonday) "Monday"];
  var list4 = [for (var i in list3) "#$i"];
  print("list#1: $list1");
  print("list#2: $list2");
  print("list#3: $list3");
  print("list#4: $list4");

  Set<String> halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
    ...list2,
  };
  print(">>> $halogens");

  void printElement(int element) {
    print("> $element");
  }

  var list = [1, 2, 3];
  // Pass printElement as a parameter.
  list.forEach(printElement);

  tour.cascadeExample();

  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED': // Empty case falls through.
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      print('CLOSED!');
      break;
  }

  tour.classFactory();
}

String countInit() {
  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);

  return piAsString;
}

int countLines() {
  return tour.calculate();
}
