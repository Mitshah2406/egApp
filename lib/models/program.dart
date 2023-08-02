import '../models/enums/Category.dart';

class Program {
  final DateTime createdAt;
  final String name;
  final Category category;
  final int lesson;
  final String id;

  Program({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.lesson,
    required this.id,
  });
  factory Program.fromJson(Map<String, dynamic> json) {
    return Program(
      createdAt: DateTime.parse(json['createdAt'] as String),
      name: json['name'] as String,
      category: _stringToCategory(json['category'] as String),
      lesson: json['lesson'] as int,
      id: json['id'] as String,
    );
  }

  static Category _stringToCategory(String value) {
    return Category.values.firstWhere(
        (category) => category.toString().split('.').last == value,
        orElse: () => Category.Books);
  }

  @override
  String toString() {
    return 'Program { createdAt: $createdAt, name: $name, category: $category, lesson: $lesson, id: $id }';
  }
}
