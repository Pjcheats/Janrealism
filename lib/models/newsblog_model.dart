import 'package:janrealism/models/blog_element.dart';

class NewsBlogModel {
  List<BlogElement>? elements;

  String author;
  String title;
  String thumbnailUrl;

  NewsBlogModel(
      {required this.author,
      required this.elements,
      required this.thumbnailUrl,
      required this.title});

  // factory NewsBlogModel.fromMap(Map<String, String> data) {
  //   return NewsBlogModel(
  //       author: data['author'].toString(),

  //       thumbnailUrl:  data['thumbnailUrl'].toString(),
  //       title: data['title'].toString(),
  //       elements: data['elements'].toString());
  // }

  // Map<String, String> toMap() {
  //   List
  //   return {
  //     'author': author,
  //     'title' : createdAt.toString(),
  //     'thumbnailUrl' : createdAt.toString(),
  //     'elements': elements.forEach((element) =>
  //       element.toMap();
  //     ),
  //   };
  // }
}
