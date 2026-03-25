Stream<int> countDown() async*{
  for (int i = 5; i >= 1; i--){
    await Future.delayed(Duration(seconds:1));
    yield i;

  }
}

void main() async{
await for (int num in countDown()){
  print('Got: $num');
}
}
