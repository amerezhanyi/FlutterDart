import 'package:collection/collection.dart';

class Luhn {
  final nonDigitExp = RegExp(r'^\d+$');
  final nonSpaceExp = RegExp(r'\s+');

  bool valid(String s) {
    final str = s.replaceAll(nonSpaceExp, '');
    if (str.length <= 1 || !nonDigitExp.hasMatch(str)) return false;
    final result = str
        .split('')
        .reversed
        .map((e) => int.parse(e))
        .mapIndexed((index, number) {
      if (index.isEven) return number;
      final doubled = number * 2;
      return doubled > 9 ? doubled - 9 : doubled;
    }).fold(0, (prev, current) => prev + current);

    return result % 10 == 0;
  }
}
