import 'package:flutter/material.dart';
import 'package:food_delivery/pages/landingPage.dart';
import './signup.dart';
import '../constants/text_constants.dart';
import '../widgets/elevated_button.dart';
import '../widgets/text_button.dart';

class LoginPage extends StatelessWidget {
  static const id = 'login_page';

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Image.asset('images/delivery.png'),
              ),
              // SizedBox(
              //   height: 50,
              // ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: kEmailTextField,
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: kPasswordTextField,
                    ),
                    SizedBox(height: 16.0),
                    CustomElevatedButton(
                      text: "Log In",
                      route: LandingPage.id,
                    ),
                    CustomTextButton(
                      text: "Or Sign Up",
                      route: SignUpPage.id,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
