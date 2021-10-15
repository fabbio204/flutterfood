import 'dart:convert';

class Restaurant {
  String uuid;
  String name;
  String image;
  String contact;

  Restaurant(this.uuid, this.name, this.image, this.contact);

  factory Restaurant.fromJson(jsonData) {
    return Restaurant(
      jsonData['uuid'],
      jsonData['name'],
      jsonData['image'],
      jsonData['contact'],
    );
  }

  toJson() {
    return jsonEncode(
        {'uuid': uuid, 'name': name, 'image': image, 'contact': contact});
  }
}
