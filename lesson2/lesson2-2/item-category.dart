
void main() {
  Item item1 = Item("Apple", "Fruit", 100, 25);
  Item item2 = Item("Dell G15", "Laptop", 10000, 12.5);
  print(item1.getFinalPrice());
  print(item1.getFullName());
  print(item2.getFinalPrice() + " - " +  item2.getFullName());
  Countible item3 = Countible("Chips", "Snacks", 25, 10, 5);
  print(item3.getFullName() + " " + item3.getFinalPrice());
}

class Item{
  String name;
  String category;
  double price;
  double discount;
  Item (this.name, this.category, this.price, [this.discount = 0]);

  String getFinalPrice(){
    double finalPrice = price;
    finalPrice = price - (price * (discount / 100.0));
    return '$finalPrice сом';
  }
                    
  String getFullName(){
    return '$category $name';
  } 
  
}

class Countible extends Item{
  Countible (String name, String category, double price, double discount, this.count) : super(name, category, price, discount);
    int count;
    
    String getFinalPrice(){
      double finalPrice = price;
      finalPrice = price * count - (price * (discount / 100.0));
      return '$finalPrice сом';
    }
    
  }


