import 'dart:convert';

class Category {
  String identify;
  String name;
  String description;

  Category(this.identify, this.name, this.description);

  factory Category.fromJson(jsonData) {
    return Category(
        jsonData['identify'], jsonData['name'], jsonData['description']);
  }

  toJson() {
    return jsonEncode(
        {'identify': identify, 'name': name, 'description': description});
  }
}
