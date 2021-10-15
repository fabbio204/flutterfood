import 'package:flutter/material.dart';
import '../../model/Restaurant.dart';
import 'widgets/RestaurantCard.dart';

class RestaurantePage extends StatefulWidget {
  @override
  _RestaurantePageState createState() => _RestaurantePageState();
}

class _RestaurantePageState extends State<RestaurantePage> {
  List<Restaurant> _restaurantes = [
    Restaurant('1', 'Frango na Brasa', '', 'atendimento@frangonabrasa.com.br'),
    Restaurant('2', 'Boi na Brasa', '', '(63)3152-7985)'),
    Restaurant('3', 'América', '', '(63)3152-7985)'),
    Restaurant('4', 'Rei do Churras', '', '(63)3152-7985)'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurantes"),
        centerTitle: true,
      ),
      body: _buildRestaurants(context),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }

  Widget _buildRestaurants(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _restaurantes.length,
        itemBuilder: (context, index) {
          return RestauranteCard(restaurant: _restaurantes[index]);
        },
      ),
    );
  }
}
