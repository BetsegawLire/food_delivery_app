import 'package:flutter/material.dart';

class PaymentContainerButton extends StatelessWidget {
  final icon;
  PaymentContainerButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.only(right: 0),
      // color: Colors.red,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: IconButton(color: Colors.black, onPressed: () {}, icon: icon),
    );
  }
}
