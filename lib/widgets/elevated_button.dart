import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final text;
  final route;

  CustomElevatedButton({this.text, this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade400),
      ),
      child: Text(text),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
