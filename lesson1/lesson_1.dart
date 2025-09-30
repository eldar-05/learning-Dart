
void main() {
  //Person person = Person('Eldar', 'Zharkynbaev');
  //print(person.getFirstName());
  //Account account = Account('Eldar', 'Zharkynbaev', 1000.0, 2024);
  //print(account.isPersonRegisteredIn(2001));
  
  Item item1 = Item('Apple', 100, 4);
  Item item2 = Item('Banana', 190, 6);
  Item item3 = Item('Potato', 29, 2);
  Order order = Order([item1, item2, item3]);
  order.remove(item2);
  order.add(item2);
  print('Total Price: \$${order.getTotalPrice()}');
}

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);
  
  String getFirstName(){
    return firstName;
  }
  
  String getLastName(){
    return lastName;
  }
}

class Account extends Person {
  double balance;
  int dataRegistration;
  Account(String firstName, String lastName, this.balance, this.dataRegistration) : super(firstName, lastName);
  
  double getBalance(){
    return balance;
  }
  
  String isPersonRegisteredIn(int year){
    if(dataRegistration - year > 0){
      return "No that person was not registered in $year";
    } else {
      return "Yes $firstName was registered in $year";
    }
  }
}

class Item {
  String name;
  int count;
  double price;
  Item(this.name, this.price, this.count);
  
  String getName(){
    return name;
  }
  
  double getPrice(){
    return price;
  }
}

class Order {
  List<Item> items;
  Order(this.items);
  
  double getTotalPrice(){
    double total = 0.0;
    for(var item in items){
      total += item.price * item.count;
    }
    return total;
  }
  
  void remove(Item item){
    items.remove(item);
  }
  
  void add(Item item){
    items.remove(item);
  }
  
  GetOrderList(){
    
  }
}
