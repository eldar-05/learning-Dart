
void main() {
  Item item1 = Item("Apple", "Fruit", 100, 10);
  print(item1.getFinalPrice());
  print(item1.getFullName());
}

class Item{
  String name;
  String category;
  double price;
  int discount;
  Item (this.name, this.category, this.price, [this.discount = 0]);

  double getFinalPrice(){
    return price - (price * (discount / 100));
  }
                    
  String getFullName(){
    return '$category $name';
  }

}
