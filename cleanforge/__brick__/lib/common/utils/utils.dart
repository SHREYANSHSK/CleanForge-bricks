import 'package:logger/logger.dart';

final logger = Get.find<Logger>();

void logInfo(String message) {
  logger.i(message);
}

// Add more utility functions