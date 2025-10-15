abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure() : super("Server Failure");
}

class CacheFailure extends Failure {
  CacheFailure() : super("Cache Failure");
}
