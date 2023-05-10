import 'package:flutter/material.dart';
import 'package:food_delivery/pages/homePage.dart';
import '../constants/text_constants.dart';

class LandingPage extends StatelessWidget {
  static const id = 'landing_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Expanded(child: Image.asset('images/icons8-delivery-64.png'))
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('images/delivery.png'),
                ),
              ),
              Expanded(
                child: Text(
                  "Top #1 Fastest Delivery Food For You",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(
                  "Top #1 Fastest Delivery Food For you order food and get something",
                  textAlign: TextAlign.center,
                  style: kGreyMediumText,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    // Background color
                    padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
