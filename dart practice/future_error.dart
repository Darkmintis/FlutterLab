Future<double> divide(int a, int b) async{
  if (b == 0){
    throw Exception('Cannot divide by zero');
    
  }
  return a / b;
}

void main() async{
  try {
    double result = await divide(10, 0);
    print (result);
  } catch (e){
    print('Error: $e');
  }
}
