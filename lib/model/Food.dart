import 'dart:convert';

class Food {
  String identify;
  String title;
  String description;
  String price;
  String image;

  Food(this.identify, this.title, this.description, this.price, this.image);

  factory Food.fromJson(jsonData) {
    return Food(jsonData['identify'], jsonData['title'],
        jsonData['description'], jsonData['price'], jsonData['image']);
  }

  toJson() {
    return jsonEncode({
      'identify': identify,
      'title': title,
      'description': description,
      'price': price,
      'image': image
    });
  }
}
