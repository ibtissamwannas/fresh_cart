class CustomException implements Exception {
  final String message;
  const CustomException({required this.message});

  @override
  String toString() {
    return message;
  }
}
