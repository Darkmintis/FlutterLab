Future<String> fetchWeather() async(
  await Future.delayed(Duration(seconds: 3));
  return 'Sunny';
  }


FutureBuilder<String>{
  future: fetchWeather(),
  builder: (context, snapshot){
    if (snapshot.connectionState == ConnectionState.waiting){
      return CircularProgressIndicator();
    }
    if (snapshot.hasError){
      return Text('Error: ${snapshot.error}');
    }
    return Text('Hello, ${snapshot.data}');
  },
)
