void main() {
  CosmicObject earth = CosmicObject('Earth', 5.972e24, 9.81);
  CosmicObject blackHole = CosmicObject('Black Hole', 1.989e30, 0.0);
  CosmicObject milkyWay = CosmicObject('Milky Way', 1e51, 0.0);

  print(earth.name);
  print('Mass: ${earth.mass} kg');
  print('Gravity: ${earth.gravity} m/s²');
  print('Is hyper object: ${earth.isHyperObject()}');
  print('Is cluster ${earth.isCluster()}');
  print('');

  print(blackHole.name);
  print('Mass: ${blackHole.mass} kg');
  print('Is hyper object: ${blackHole.isHyperObject()}');
  print('Is cluster ${blackHole.isCluster()}');
  print('');
  
  print(milkyWay.name);
  print('Mass: ${milkyWay.mass} kg');
  print('Is hyper object: ${milkyWay.isHyperObject()}');
  print('Is cluster ${milkyWay.isCluster()}');
  print('');
  
}

class CosmicObject with HyperObject,Clusters {
  String name;
  double mass;
  double gravity;
  CosmicObject(this.name, this.mass, this.gravity);
}

mixin HyperObject {
  double get mass;
  bool isHyperObject() {
    return (mass > 1e30 && mass < 1e45);
  }
}

mixin Clusters {
  double get mass;
  bool isCluster() {
    return (mass > 1e50);
  }
}
