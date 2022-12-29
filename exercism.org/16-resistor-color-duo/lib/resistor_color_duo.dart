class ResistorColorDuo {
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

  int value(List<String> colors) {
    int firstColor = colorsList.indexOf(colors[0]);
    int secondColor = colorsList.indexOf(colors[1]);
    int result = int.parse("$firstColor$secondColor");

    return result;
  }
}
