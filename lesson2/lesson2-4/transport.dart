void main(){
  Transport walk = Transport("walk");
  Transport moto = Transport("moto");
  Transport car = Transport("car");
  walk.drive();
  moto.drive();
  car.drive();
}

abstract class Transport{
  factory Transport(String type){
    if(type == "car"){
      return Car();
    } else if(type == "moto"){
      return Moto();
    } else {
      return Walk();
    }
  }

  void drive();
}

class Car implements Transport{
  @override
  void drive() {
    print("Driving a car");
  }
}

class Moto implements Transport{
  @override
  void drive() {
    print("Riding a motorcycle");
  }
}

class Walk implements Transport{
  @override
  void drive() {
    print("Walking");
  }
}