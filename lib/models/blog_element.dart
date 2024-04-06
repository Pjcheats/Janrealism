import 'dart:io';
import 'package:flutter/material.dart';

class BlogElement {
  BlogElementType blogElementType = BlogElementType.Article;
  String content;

  BlogElement({required this.blogElementType, required this.content});

  factory BlogElement.formMap(Map<String, String> data) {
    return BlogElement(
      blogElementType: BlogElementType.fromString(data["blogElementType"]),
      content: data["content"].toString(),
    );
  }

  Map<String, String> toMap() {
    return {
      'BlogElementType': blogElementType.toString(),
      'content': content,
    };
  }
}

enum BlogElementType {
  Heading,
  SubHeading,
  Article,
  Media;

  @override
  String toString() {
    switch (this) {
      case BlogElementType.Heading:
        return 'Heading';
      case BlogElementType.SubHeading:
        return 'SubHeading';
      case BlogElementType.Article:
        return 'Article';
      case BlogElementType.Media:
        return 'Media';
      default:
        return "Article";
    }
  }

  static BlogElementType fromString(String? value) {
    switch (value) {
      case 'Heading':
        return BlogElementType.Heading;
      case 'SubHeading':
        return BlogElementType.SubHeading;
      case 'Article':
        return BlogElementType.Article;
      case 'Media':
        return BlogElementType.Media;
      default:
        return BlogElementType.Article;
    }
  }
}
