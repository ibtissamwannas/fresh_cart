abstract class Failures {
  final String message;

  Failures(this.message);

  @override
  String toString() => message;
}

class ServerFailure extends Failures {
  ServerFailure(super.message);
}