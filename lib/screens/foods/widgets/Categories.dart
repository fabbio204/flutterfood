import 'package:flutter/material.dart';
import '../../../model/Category.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;

  const Categories(this.categories);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return _buildCategory(category);
        },
      ),
    );
  }

  Widget _buildCategory(Category category) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Center(
        child: Text(
          category.name,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
