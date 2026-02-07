class OtpValidationResult {
  final bool isValid;
  final String? message;

  const OtpValidationResult({required this.isValid, this.message});
}

OtpValidationResult validateOtp({
  required String enteredOtp,
  required String realOtp,
  int length = 4,
}) {
  // 1️⃣ فاضي
  if (enteredOtp.isEmpty) {
    return const OtpValidationResult(
      isValid: false,
      message: 'من فضلك أدخل رمز التحقق',
    );
  }

  // 2️⃣ مش أرقام
  if (!RegExp(r'^\d+$').hasMatch(enteredOtp)) {
    return const OtpValidationResult(
      isValid: false,
      message: 'رمز التحقق يجب أن يحتوي على أرقام فقط',
    );
  }

  // 3️⃣ ناقص
  if (enteredOtp.length != length) {
    return OtpValidationResult(
      isValid: false,
      message: 'رمز التحقق يجب أن يكون $length أرقام',
    );
  }

  // 4️⃣ غلط
  if (enteredOtp != realOtp) {
    return const OtpValidationResult(
      isValid: false,
      message: 'رمز التحقق غير صحيح',
    );
  }

  // ✅ صح
  return const OtpValidationResult(isValid: true);
}
