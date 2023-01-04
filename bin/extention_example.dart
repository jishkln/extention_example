class StringUtils {
  static bool isValidEmain(String email) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(email);
  }
}

extension StringExtention on String {
  bool get isEmailVaild {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  String concatWithSpace(String other) {
    return "$this $other";
  }

  String operator &(String other) => "$this $other";
}

main() {
  StringUtils.isValidEmain('JIshnuas');
  dynamic email = "jishnu@gmail.com".isEmailVaild;
  dynamic output = "jishnu" & "KLN";
  print(output);
}
