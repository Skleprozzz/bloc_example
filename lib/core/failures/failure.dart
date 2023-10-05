base class Failure implements Exception {
  const Failure({required this.message});
  final String? message;
}

base class ApiFailure extends Failure {
  const ApiFailure({
    required this.responseCode,
    super.message,
  });
  final int? responseCode;
}

base class AppFailure extends Failure {
  const AppFailure({super.message});
}
