import 'package:flutter/material.dart';
import 'widgets/heading_auth.dart';
import './register_page.dart';

class LoginPage extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeight;
  @override
  Widget build(BuildContext context) {
    // Obtendo a largura e altura da tela
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: _loginPageUI(context),
      ),
    );
  }

  Widget _loginPageUI(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * .1),
      child: Column(
        children: [
          SizedBox(height: 50),
          HeadingAuth(),
          SizedBox(height: 20),
          _formLogin(context),
          SizedBox(height: 15),
          _loginButton(context),
          SizedBox(height: 30),
          _textRegister(context),
        ],
      ),
    );
  }

  Widget _formLogin(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(143, 148, 251, .6),
                blurRadius: 20.0,
                offset: Offset(0, 10))
          ]),
      child: Column(
        children: [_emailTextField(context), _passwordTextField(context)],
      ),
    );
  }

  Widget _emailTextField(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      validator: (value) {},
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: 'E-mail',
          hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
    );
  }

  Widget _passwordTextField(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      obscureText: true,
      style: TextStyle(color: Theme.of(context).primaryColor),
      validator: (value) {},
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          hintText: 'Senha',
          hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () =>
            {Navigator.pushReplacementNamed(context, '/restaurants')},
        color: Theme.of(context).primaryColor,
        child: Text(
          'LOGIN',
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  Widget _textRegister(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => RegisterPage()))
        // Ao clicar no bot??o "Cadastrar", o aplicativo chama a tela de registro
        // no lugar da tela de login, mantendo s?? 1 tela na pilha
        Navigator.pushReplacementNamed(context, '/register')
      },
      child: Text(
        'Cadastrar',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
