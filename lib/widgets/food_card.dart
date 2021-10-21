import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String? identify;
  final String? title;
  final String? description;
  final String? price;
  final String? image;

  FoodCard(
      {this.identify, this.title, this.description, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2.5,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(color: Colors.grey[100]!)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                _buildImage(),
                _buildInfo(),
                _buildButtonCart(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.only(right: 8),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: image != ''
              ? image!
              : 'https://academy.especializati.com.br/storage/courses/curso-flutterfood.png',
          placeholder: (context, url) => Container(
            height: 80,
            width: 80,
            child: Center(child: CircularProgressIndicator()),
          ),
          errorWidget: (context, url, error) => Center(
            child: Icon(Icons.error),
          ),
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 7),
          Text(
            description!,
            style: TextStyle(
                color: Colors.black38,
                fontSize: 12,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 5),
          Text(
            price!,
            style: TextStyle(
                color: Colors.black38,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget _buildButtonCart(BuildContext context) {
    return Container(
        child: IconTheme(
      data: IconThemeData(color: Theme.of(context).primaryColor),
      child: Icon(Icons.shopping_cart),
    ));
  }
}
