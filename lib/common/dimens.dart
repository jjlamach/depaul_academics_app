class Dimens {
  static const borderRadius = 20.0;
  static const fontSizeButtons = 20.0;
  static const seventyPercentOfScreenWidth = 0.7;
  static const cardElevation = 4.0;
}

extension MySubString on String {
  String concatenateUntil(String character) {
    StringBuffer result = StringBuffer();
    int currentIndex = 0;

    while (currentIndex < length) {
      String currentChar = this[currentIndex];
      if (currentChar == character) {
        break; // Stop when the specified character is found
      }
      result.write(currentChar);
      currentIndex++;
    }

    return result.toString();
  }
}
