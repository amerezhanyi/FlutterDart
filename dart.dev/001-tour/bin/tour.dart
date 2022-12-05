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
}

String countInit() {
  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);

  return piAsString;
}

int countLines() {
  return tour.calculate();
}
