const books = [
    {"id": 1, "title": "Book1", "description": "", "price": 14.5},
    {"id": 2, "title": "Book2", "description": "Some descr", "price": 12.5},
    {"id": 3, "title": "Physics", "description": "The elementary physics", "price": 22.8,},
  ];

class Book {
  int id;
  String title;
  String? description;
  double price;

  Book({
    required this.id,
    required this.title,
    required this.price,
    this.description,
  });

  factory Book.fromJson(Map<String, dynamic> data) {
    return Book(
      id: data["id"],
      title: data["title"],
      description: data["description"],
      price: data["price"],
    );
  }
}

class Request {
  static List<Book> get([int? param]) {
    if (param != null) {
      var list = books.where((element) => element["id"] == param);

      List<Book> elements = [];

      elements.add(Book.fromJson(list.first));

      return elements;
    }
    return books.map((element) => Book.fromJson(element)).toList();
  }
}

abstract class BookApi {
  Future<List<Book>> list();
  Future<Book> view(int id);
  Future<bool> remove(int id);
}

class BookApiImpl implements BookApi {

  Future<List<Book>> list() async {
    return Future.delayed(Duration(seconds: 5), () {
      return Request.get();
    });
  }

  Future<Book> view(int id) async {
    return Future.delayed(Duration(seconds: 5), () {
      return Request.get(id).first;
    });
  }

  Future<bool> remove(int id) async {
    return Future.delayed(Duration(seconds: 5), () {
      return false;
    });
  }
}

void main() async {
  BookApiImpl bookApi = BookApiImpl();

  List<Book> books = await bookApi.list();
  print("The Book list is :");
  books.forEach((element) {
    print(
      "id : ${element.id}, title : ${element.title}, description : ${element.description}, ${element.price}",
    );
  });
}
