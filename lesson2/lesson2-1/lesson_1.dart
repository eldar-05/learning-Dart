
void main() {
  User user = User();
  user.firstName = 'John';
  user.lastName = 'Doe';
  user.exp = DateTime(2020, 1, 1); 

  print('Full Name: ${user.fullName}');
  print('Experience: ${user.exp} years');
}

class User {
  late String _firstName;
  late String _lastName;
  late int _exp;
  
  set firstName(String firstName) => _firstName = firstName;
  set lastName(String lastName) => _lastName = lastName;

  set exp(DateTime startDate) {
    DateTime now = DateTime.now();
    _exp = now.year - startDate.year;
  }

  get exp => _exp;

  get fullName => '$_firstName $_lastName';

}