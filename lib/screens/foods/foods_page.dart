import 'package:flutter/material.dart';
import '../../../widgets/food_card.dart';
import './widgets/Categories.dart';
import '../../../model/Category.dart';
import '../../../model/Food.dart';

class FoodsPage extends StatefulWidget {
  @override
  _FoodsPageState createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  List<Category> _categories = [
    Category('1', 'Pizza', 'Pizza top'),
    Category('2', 'Hamburger', 'Hamburger'),
    Category('3', 'Salgados', 'Salgados'),
    Category('4', 'Bebida', 'Bebidas'),
  ];
  List<Food> foods = [
    Food(
        '1',
        'Frango com Catupiry',
        'Pizza de Frango com Catupiry',
        'R\$ 30,00',
        'https://s2.glbimg.com/wI1F2mQKVYjZLOE4GqZP0ZD2Qwc=/620x455/e.glbimg.com/og/ed/f/original/2021/05/20/por-que-pizza-tao-boa-gostosa-ciencia-sabor.png'),
    Food('2', 'Coca Zero', 'Coca-cola zero açúcar Lata', 'R\$ 5,00',
        'https://static.paodeacucar.com/img/uploads/1/702/14138702.jpg'),
    Food(
        '3',
        'X-Filezinho',
        'Sanduíche com hamburger de filé mignon',
        'R\$ 14,00',
        'https://www.teclasap.com.br/wp-content/uploads/2011/05/hamburger.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurante"),
        centerTitle: true,
      ),
      body: _buildPage(),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }

  Widget _buildPage() {
    return Column(
      children: [
        Categories(_categories),
        Expanded(child: _buildFoods()),
      ],
    );
  }

  Widget _buildFoods() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final Food food = foods[index];
          return FoodCard(
            identify: food.identify,
            title: food.title,
            description: food.description,
            price: food.price,
            image: food.image,
          );
        },
      ),
    );
  }
}
