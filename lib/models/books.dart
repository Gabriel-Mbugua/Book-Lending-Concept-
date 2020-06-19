import 'package:flutter/cupertino.dart';
import 'package:flutterapp/models/book.dart';

class Books with ChangeNotifier {
  List<Book> _books = [
    Book(
        title: "Book 1",
        description: "Extracurricular Reading/ Growing motivational story book",
        imageURl:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-poster-template-d0003e2ab393fa2c982a0de15a607486.jpg?ts=1563365780"),
    Book(
        title: "Book 2",
        description: "Extracurricular Reading/ Growing motivational story book",
        imageURl:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-poster-template-d0003e2ab393fa2c982a0de15a607486.jpg?ts=1563365780"),
    Book(
        title: "Book 3",
        description: "Extracurricular Reading/ Growing motivational story book",
        imageURl:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-poster-template-d0003e2ab393fa2c982a0de15a607486.jpg?ts=1563365780"),
    Book(
        title: "Book 4",
        description: "Extracurricular Reading/ Growing motivational story book",
        imageURl:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-poster-template-d0003e2ab393fa2c982a0de15a607486.jpg?ts=1563365780"),
    Book(
        title: "Book 5",
        description: "Extracurricular Reading/ Growing motivational story book",
        imageURl:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-poster-template-d0003e2ab393fa2c982a0de15a607486.jpg?ts=1563365780"),
    Book(
        title: "Book 6",
        description: "Extracurricular Reading/ Growing motivational story book",
        imageURl:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-poster-template-d0003e2ab393fa2c982a0de15a607486.jpg?ts=1563365780"),
    Book(
        title: "Book 7",
        description: "Extracurricular Reading/ Growing motivational story book",
        imageURl:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-poster-template-d0003e2ab393fa2c982a0de15a607486.jpg?ts=1563365780"),
    Book(
        title: "Book 8",
        description: "Extracurricular Reading/ Growing motivational story book",
        imageURl:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-poster-template-d0003e2ab393fa2c982a0de15a607486.jpg?ts=1563365780"),
  ];

  List<Book> get items {
    return _books.toList();
  }
}
