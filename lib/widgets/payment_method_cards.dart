import 'package:flutter/material.dart';

class PaymentMethodCard extends StatelessWidget {
  final image;
  // final color;
  final balance;
  final account;
  final isSelected;

  PaymentMethodCard({this.image, this.balance, this.account, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ChoiceChip(
        label: Container(
          // margin: EdgeInsets.only(right: 10),
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                // 'images/icons8-mastercard-48.png',
                image,
                width: 50,
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black),
                    ),
                    Text(
                      // "1000",
                      balance,
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black),
                    ),
                    Text(
                      // "01/21",
                      account,
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        selectedColor: Colors.red[400],
        // selectedShadowColor: Colors.white,
        // selected: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey),
        ),
        selected: isSelected,
        onSelected: (selected) {
          // Do something when the chip is selected
        },
      ),
    );
  }
}
