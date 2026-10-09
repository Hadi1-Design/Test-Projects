import 'dart:io';

void main() async {
  // const String libName = "Ahad Library";

  // List<Book> booklist = [
  //   Book('Ahad Ali', 'TrueTrading', 19.99),
  //   Book('Ahmed Ali', 'C++', 10.99),
  //   Book('Ali', 'OOP Concepts', 15.99),
  // ];
  // stdout.write("Displaying All Books in $libName \n");
  // for (int i = 0; i < booklist.length; i++) {
  //   stdout.write('BookName: ${booklist[i].title} \n');
  // }

  // stdout.write("Added One Book in $libName \n");
  // var b1 = Book('Aon Ali', 'DataStructures', 20.0);
  // booklist.add(b1);
  // for (int i = 0; i < booklist.length; i++) {
  //   stdout.write('BookName: ${booklist[i].title} \n');
  // }

  // stdout.write("Added One Book in $libName \n");
  // var b2 = Book('Haider Ali', 'Networking', 90.0);
  // booklist.insert(2, b2);
  // for (int i = 0; i < booklist.length; i++) {
  //   stdout.write('BookName: ${booklist[i].title} \n');
  // }

  // stdout.write("Removing One Book from $libName \n");
  // booklist.removeAt(3);
  // for (int i = 0; i < booklist.length; i++) {
  //   stdout.write('BookName: ${booklist[i].title} \n');
  // }

  // double total = 0;
  // for (int i = 0; i < booklist.length; i++) {
  //   stdout.write('Book1 \n');
  //   stdout.write('Author: ${booklist[i].author} \n');
  //   stdout.write('Title: ${booklist[i].title} \n');
  //   stdout.write('Availability: ${booklist[i].isAvailable} \n');
  //   stdout.write('Price: ${booklist[i].price} \n');
  //   total += booklist[i].price;
  // }

  // stdout.write("Total Books Price: $total \n");

  // //Authors map
  // var authorsmap = <String, int>{};

  // for (int i = 0; i < booklist.length; i++) {
  //   String currentauthor = booklist[i].author;

  //   authorsmap.update(
  //     currentauthor,
  //     (val) =>
  //         val +
  //         1, //() is an input paramete, that takes value of matched key ie authorscount.
  //     //val can by any name it is vairable.
  //     //=> takes input as left and returns output written or processed at right.
  //     ifAbsent: () => 1,
  //   ); //ifAbsent built it, map function to check key is present or not.
  //   // if not present, it adds key (Author name) and sets count to 1.
  // }

  // //using for-in loop for maps.
  // stdout.write("Printing Authors Map \n");
  // for (var entry in authorsmap.entries) {
  //   stdout.write('Author: ${entry.key} , Count: ${entry.value} \n');
  // }
  // //using for-each loop for maps.
  // stdout.write("Printing Authors Map \n");
  // authorsmap.forEach((author, count) {
  //   stdout.write('Author: $author, Books: $count \n');
  // });

  // await b1.fetchbook();
  // await b1.bookreviews();

  /*------------------------------------------------------------------------------------------------ */
}

class Book {
  String title;
  String author;
  double price;
  bool isAvailable;
  Book(this.author, this.title, this.price) : isAvailable = true;

  void bookInfo() {
    stdout.write("Title: $title \n");
    stdout.write("Title: $author \n");
    stdout.write("Title: $price \n");
    stdout.write("Availability: $isAvailable \n");
  }

  void bookSold() {
    isAvailable = false;
    stdout.write("Book Sold!!!");
  }

  Future<void> fetchbook() async {
    List<Book> newbook = [
      Book('Juhn', 'HarryPoter', 8.0),
      Book('Jud', 'FiftyShadesOfGrey', 30.0),
    ];
    await Future.delayed(Duration(seconds: 2));

    for (int i = 0; i < newbook.length; i++) {
      stdout.write('NewBook1: ${newbook[i].title} \n');
      stdout.write('NewBook2: ${newbook[i].title} \n');
    }
  }

  Future<void> bookreviews() async {
    await Future.delayed(Duration(seconds: 2));
    stdout.write('All Books Reviews are 10/10 \n');
  }
}
