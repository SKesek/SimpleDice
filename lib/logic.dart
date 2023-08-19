class CheckNumber {
  CheckNumber(this.checkNumber);
  final int checkNumber;
  bool dice12(checkNumber) {
    if (checkNumber == 2 || checkNumber == 3) {
      return false;
    } else {
      return true;
    }
  }

  bool dice5(checkNumber) {
    if (checkNumber == 2 || checkNumber == 4) {
      return false;
    } else {
      return true;
    }
  }
}
