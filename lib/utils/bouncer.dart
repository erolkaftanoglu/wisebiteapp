import 'dart:async';

class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({required this.delay});

  void run(Function() callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }
}
