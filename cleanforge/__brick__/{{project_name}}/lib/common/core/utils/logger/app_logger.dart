import 'package:logger/logger.dart';



class Log {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 3,
      lineLength: 160,
      excludePaths: [''],
    ),
  );

  static void verbose(dynamic message,
      [dynamic error, StackTrace? stackTrace]) {
    _logger.t(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void debug(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void info(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void warning(dynamic message,
      [dynamic error, StackTrace? stackTrace]) {
    _logger.w(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void highlight(dynamic message,
      [dynamic error, StackTrace? stackTrace]) {
    _logger.f(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
