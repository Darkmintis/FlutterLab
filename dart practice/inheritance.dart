class Animal {
  String name;
  int age;
  
  Animal(this.name, this.age);
  
  void eat(){
    print('$name is eating');
  }
  
  void sleep(){
    print('$name is sleeping');
  }
  
  void makeSound(){
    print('$name makes a sound');
  }
}

class Dog extends Animal{
  String breed;
  
  Dog(String name, int age, this.breed) : super(name, age);
  
  @override
  void makeSound(){
    print('$name barks: Woof! Woof!');
    }
  
  void wagTail(){
    print('$name is wagging tail');
  }
}

class Cat extends Animal{
  Cat(String name, int age) : super(name, age);
  
  @override
  void makeSound(){
    print('$name meows: Meow! Meow!');
}
  
  void scratch(){
    print('$name is scratching');
    
  }
}

void main(){
  Dog dog = Dog('Buddy', 3, 'Golden Retriever');
  Cat cat = Cat('Wisky', 2);
  
  dog.eat();
  dog.sleep();
  
  dog.makeSound();
  cat.makeSound();
  
  dog.wagTail();
  cat.scratch();
  
  print('${dog.name} is a ${dog.breed}');
}

