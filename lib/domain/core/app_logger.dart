import 'package:logger/logger.dart';

abstract interface class AppLoggerInteface {
  void trace(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  });
  void debug(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  });
  void info(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  });
  void warning(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  });
  void error(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  });
  void fatal(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  });
}

class _AppLogger implements AppLoggerInteface {
  final logger = Logger(
    filter: null, // Use the default LogFilter (-> only log in debug mode)
    printer: PrettyPrinter(
        methodCount: 2, // Number of method calls to be displayed
        errorMethodCount: 8, // Number of method calls if stacktrace is provided
        lineLength: 120, // Width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ), // Use the PrettyPrinter to format and print log
    output: null, // Use the default LogOutput (-> send everything to console)
  );

  @override
  debug(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.d("Debug log");
  }

  @override
  info(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.i("Info log");
  }

  @override
  warning(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.w("Warning log");
  }

  @override
  error(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.e("Error log");
  }

  @override
  fatal(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.f("What a fatal log");
  }

  @override
  trace(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.t(message, time: time, error: error, stackTrace: stackTrace);
  }
}

final logger = _AppLogger();
