class ResistorColor {
  final colorsList = <String>[
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
  ];
  List<String> get colors => this.colorsList;

  int colorCode(String color) {
    return colorsList.indexWhere((element) => element == color);
  }
}
