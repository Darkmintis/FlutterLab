class Car(){
  String brand;
  String model;
  int year;
  double mileage;

  Car(this.brand, this.model, this.year, this .mileage);

  void displayInfo(){
    print('$brand $model ($year) - $mileage');
  }

  void main(){
    Car.myCar = Car('Toyota', 'Camry', 2020, 15000);
    Car.friendCar = Car('Honda', 'Civic', 2019, 14000);

    myCar.displayInfo();
    friendsCar.displayInfo();
  }
}