import 'package:training_app/models/enums/Category.dart';

class Lesson {
  final String id;
  final String name;
  final int duration;
  final bool locked;
  final Category category;
  final DateTime createdAt;

  const Lesson({
    required this.id,
    required this.name,
    required this.duration,
    required this.locked,
    required this.category,
    required this.createdAt,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      createdAt: DateTime.parse(json['createdAt'] as String),
      name: json['name'] as String,
      category: _stringToCategory(json['category'] as String),
      locked: json['locked'] ?? false,
      duration: json['duration'] as int,
      id: json['id'] as String,
    );
  }

  static Category _stringToCategory(String value) {
    return Category.values.firstWhere(
      (category) => category.toString().split('.').last == value,
      orElse: () {
        return Category.Books;
      },
    );
  }

  @override
  String toString() {
    return 'Lesson { createdAt: $createdAt,locked:$locked, name: $name, category: $category, duration: $duration, id: $id }';
  }
}
