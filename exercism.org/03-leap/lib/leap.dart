class Leap {
  bool leapYear(int year) {
    if (year % 4 == 0 || year % 400 == 0) {
      if (year % 100 == 0) {
        return false;
      }
      return true;
    }

    return false;
  }
}
