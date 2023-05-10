import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final text;
  final route;

  CustomTextButton({this.text, this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        // Navigate to the sign up page
        Navigator.pushNamed(context, route);
      },
    );
  }
}
