void main(){
  Shape cir = Shape("circle");
  Shape sq = Shape("square");
  Shape tri = Shape("triangle");
  cir.draw();
  sq.draw();
  
}

abstract class Shape{
  factory Shape(String type){
    if(type == "circle") return Circle();
    else if(type == "square") return Square();
    else return AnyShape();
  }
  void draw();
}

class Circle implements Shape{
  @override
  void draw(){print("O");}
}

class Square implements Shape{
  @override
  void draw(){print("[]");}
}

class AnyShape implements Shape{
  @override
  void draw(){print("G");}
}