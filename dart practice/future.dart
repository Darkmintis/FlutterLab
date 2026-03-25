Future<String> fetchWeather() async{
  await Future.delayed(Duration(seconds: 3));
  return 'Sunny';
  }

void main() async{
  String weather = await fetchWeather();
  print('Today weather is, $weather.');
}
