
void main() {
  Item item1 = Item("Apple", "Fruit", 100, 25);
  Item item2 = Item("Dell G15", "Laptop", 10000, 12.5);
  print(item1.getFinalPrice());
  print(item1.getFullName());
  print(item2.getFinalPrice() + " - " +  item2.getFullName());
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


