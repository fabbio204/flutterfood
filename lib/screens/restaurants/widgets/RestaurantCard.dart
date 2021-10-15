import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../model/Restaurant.dart';

class RestauranteCard extends StatelessWidget {
  final Restaurant restaurant;

  const RestauranteCard({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 4, left: 1, right: 1),
      child: Card(
        elevation: 2.5,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[200]!,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: restaurant.image != ''
                          ? restaurant.image
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
                ),
                VerticalDivider(
                  color: Colors.black54,
                ),
                Expanded(
                  child: Text(
                    restaurant.name,
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
