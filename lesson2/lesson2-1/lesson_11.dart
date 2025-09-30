
void main() {
  User user = User();
  user.fullName = ("John", "Doe");
}

class User {
  String _name;
  String _lastName;
  int _exp;

  set fullName(String firstName, String lastName){
    _name = firstName;
    _lastName = lastName;
  }

  set exp(DateTime startDate) {
    DateTime now = DateTime.now();
    if (startDate < 0) {
      throw Exception("");
    }
    _exp = now.year - startDate.year;
  }

  get fullName => '$_name $_lastName';
}