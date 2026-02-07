class EmailValidator {
  EmailValidator._();

  static String? validate(String value) {
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Invalid email';
    }
    return null;
  }
}
