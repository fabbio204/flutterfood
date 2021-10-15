import 'package:flutter/material.dart';
import 'package:flutterfood/screens/restaurants/restaurant_page.dart';
import './screens/auth/register_page.dart';
import './screens/auth/login_page.dart';

void main() => runApp(FlutterFoodApp());

class FlutterFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterFood',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(147, 70, 248, 1),
          backgroundColor: Colors.white,
          accentColor: Colors.black,
          brightness: Brightness.dark),
      // Configurando as rotas
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/restaurants': (context) => RestaurantePage(),
      },

      // Rota padrão ao abrir o aplicativo
      initialRoute: '/login',
    );
  }
}
