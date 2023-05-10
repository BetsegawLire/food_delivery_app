import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart.dart';
import '../widgets/payment_container_button.dart';
import '../widgets/payment_method_cards.dart';
import '../constants/text_constants.dart';

class PaymentPage extends StatelessWidget {
  static const id = 'payment_page';
  final _categories = ["1", "2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          // width: 100,
          // color: Colors.white,
          child: BackButton(
            onPressed: () {
              Navigator.pushNamed(context, CartPage.id);
            },
            color: Colors.black,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 20),
          child: Center(
            child: Text(
              'Order Confirmation',
              textAlign: TextAlign.center,
              style: kDarkMediumText,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                // Do something when the icon button is pressed
              },
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                  PaymentMethodCard(
                    image: 'images/icons8-mastercard-48.png',
                    account: '100030',
                    balance: '2000',
                    isSelected: true,
                  ),
                  PaymentMethodCard(
                    image: 'images/icons8-visa-50.png',
                    account: '100030',
                    balance: '2000',
                    isSelected: false,
                  ),
                ],
                // itemCount: _categories.length,
                // itemBuilder: (BuildContext context, int index) {
                // var _selectedCategory = 'Pizza';

                // },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 10, left: 20),
            child: Text(
              "Pay Cash",
              style: kGreyMediumText,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Time to deliver",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    PaymentContainerButton(
                      icon: Icon(Icons.timelapse),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "As quickly as possible",
                      style: kGreyMediumText,
                    )
                  ],
                ),
                PaymentContainerButton(
                  icon: Icon(Icons.edit),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Delivery address",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    PaymentContainerButton(
                      icon: Icon(Icons.location_city),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New york",
                          style: kGreyMediumText,
                        ),
                        Text(
                          "Central Ave, S 15",
                          style: kGreyMediumText,
                        )
                      ],
                    )
                  ],
                ),
                PaymentContainerButton(
                  icon: Icon(Icons.edit),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Estimated time to deliver:",
                  style: kGreyMediumText,
                ),
                Text(
                  "45 min",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
