// ---- implements: must re-implement every member, inherits nothing ----
class Logger {
  void log(String msg) => print('Logger: $msg');
}

class ImplementedLogger implements Logger {
  @override
  void log(String msg) => print('ImplementedLogger (own code): $msg');
}

// ---- with: reuses the mixin's actual code ----
mixin LoggerMixin {
  void log(String msg) => print('LoggerMixin: $msg');
}

class MixedLogger with LoggerMixin {}

void main() {
  ImplementedLogger().log('hello'); // Uses its own re-written body.
  MixedLogger().log('hello');       // Reuses the mixin's body for free.
}