import 'package:flutter/material.dart';
import 'pages/landingPage.dart';
import 'pages/drawer.dart';
import 'pages/search.dart';
import 'pages/homePage.dart';
import 'pages/cart.dart';
import 'pages/description.dart';
import 'pages/payment.dart';
import 'pages/login.dart';
import 'pages/signup.dart';
import 'package:provider/provider.dart';
import './models/cart_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        initialRoute: LoginPage.id,
        routes: {
          LandingPage.id: (context) => LandingPage(),
          DrawerPage.id: (context) => DrawerPage(),
          SearchResultPage.id: (context) => SearchResultPage(),
          HomePage.id: (context) => HomePage(),
          CartPage.id: (context) => CartPage(),
          DescriptionPage.id: (context) => DescriptionPage(),
          PaymentPage.id: (context) => PaymentPage(),
          LoginPage.id: (context) => LoginPage(),
          SignUpPage.id: (context) => SignUpPage(),
        },
      ),
    );
  }
}
