mixin CanFly{
  void fly(){
    print('Flying with mixin');
  }
}

mixin CanRun{
  void run(){
    print('    i am running');
  }
}

class Bird with CanFly, CanRun{
  String name;
  
  Bird(this.name);
  
  void introduce(){
    print('i am $name, a bird');
  }
  
}

void main(){
  
  var s = Bird('sparrow');
  s.introduce();
  s.fly();
  s.run();
}


