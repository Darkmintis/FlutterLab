// Simple Stream with multiple values
Stream<String> simpleStream() async* {
  yield 'First Value';
  yield 'Second Value';
  yield 'Third Value';
}

// Stream with delays
Stream<int> countdownStream() async* {
  for (int i = 3; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));

    yield i;
  }
}

// Infinite Stream
Stream<int> infiniteCounter() async* {
  int count = 0;

  while (true) {
    await Future.delayed(Duration(seconds: 1));
    yield count;
    count++;
  }
}

// Stream that produces values from a list
Stream<String> messageStream() async* {
  List<String> messages = [
    'Message 1: hello',
    'Message 2: how are you?',
    'Message 3: what are you doing?',
    'Message 4: Cool! keep going!',
  ];

  for (String msg in messages) {
    await Future.delayed(Duration(milliseconds: 500));
    yield msg;
  }
}
