class BeerSong {
  var stringRegular = [
    "{was} bottles of beer on the wall, {was} bottles of beer.",
    "Take one down and pass it around, {left} bottles of beer on the wall."
  ];
  var stringTwo = [
    "2 bottles of beer on the wall, 2 bottles of beer.",
    "Take one down and pass it around, 1 bottle of beer on the wall."
  ];
  var stringOne = [
    "1 bottle of beer on the wall, 1 bottle of beer.",
    "Take it down and pass it around, no more bottles of beer on the wall."
  ];
  var stringZero = [
    "No more bottles of beer on the wall, no more bottles of beer.",
    "Go to the store and buy some more, 99 bottles of beer on the wall."
  ];

  List<String> recite(int i, int j) {
    var result = <String>[];

    while (j > 0) {
      var verse = <String>[];
      if (i == 0) {
        verse = stringZero;
      } else if (i == 1) {
        verse = stringOne;
      } else if (i == 2) {
        verse = stringTwo;
      } else {
        verse.add(stringRegular[0].replaceAll("{was}", i.toString()));
        verse.add(stringRegular[1].replaceAll("{left}", (i - 1).toString()));
      }
      result.add(verse[0]);
      result.add(verse[1]);

      --i;
      --j;

      if (j > 0) result.add("");
    }
    return result;
  }
}
