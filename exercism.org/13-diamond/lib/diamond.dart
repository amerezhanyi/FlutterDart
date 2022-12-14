class Diamond {
  static const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  List<String> rows(String letter) {
    if (letter == 'A') return [letter];

    final int letterIndex = alphabet.indexOf(letter);
    final int rowLength = ((letterIndex + 1) * 2) - 1;
    List<String> diamond = [];
    int leftPointer = rowLength ~/ 2;
    int rightPointer = leftPointer;
    int currentLetterPosition = 0;

    while (leftPointer >= 0 && rightPointer < rowLength) {
      var row = List<String>.generate(rowLength, (index) => ' ');

      row[leftPointer] = alphabet[currentLetterPosition];
      row[rightPointer] = alphabet[currentLetterPosition];
      diamond.add(row.join(''));
      leftPointer--;
      rightPointer++;
      currentLetterPosition++;
    }

    return diamond.followedBy(diamond.reversed.skip(1)).toList();
  }
}
