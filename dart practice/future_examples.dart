// Simple future that returns immediately
Future<String> simpleFuture() async {
  return 'Hello from Future';
}

// Future with delay
Future<String> delayedFuture() async {
  print('Starting delayed future...');

  await Future.delayed(Duration(seconds: 2));

  print('Delayed future completed!');

  return 'Data arrived after 2 seconds';
}

// Future that might fail
Future<double> divideNumbers(double a, double b) async {
  if (b == 0) {
    throw Exception('Cannot divide by 0');
  }

  return a / b;
}
