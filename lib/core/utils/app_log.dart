import 'dart:async' as async;
import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AppLog {
  AppLog._();

  static Logger logger = Logger();
  static void e(Object error, StackTrace stackTrace, {Object? message}) {
    logger.log(Level.fatal, message ?? error.toString(), error: error, stackTrace: stackTrace);
  }

  static void i(Object message) {
    logger.i(message);
  }
}





