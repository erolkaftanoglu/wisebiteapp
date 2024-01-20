import 'package:flutter/foundation.dart';

void safePrint(String message) {
  if (kDebugMode) {
    print(message);
  }
}
