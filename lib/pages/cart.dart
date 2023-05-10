import 'package:flutter/material.dart';
import 'package:food_delivery/pages/description.dart';
import 'package:food_delivery/pages/payment.dart';
import 'package:provider/provider.dart';
import '../widgets/container_button.dart';
import '../constants/text_constants.dart';
import '../models/cart_model.dart';

class CartPage extends StatelessWidget {
  static const id = 'cart_page';

  final _foodItems = [
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Dominos Pizza",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Pizza Hut",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Milk Shake",
      'strCategory': 'Juice'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Dominos Pizza",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Pizza Hut",
      'strCategory': 'Pizza'
    },
    {
      "strMealThumb": 'images/pizza.png',
      'strMeal': "Milk Shake",
      'strCategory': 'Juice'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          // width: 100,
          // color: Colors.white,
          child: BackButton(
            onPressed: () {
              // Navigator.pushNamed(context, DescriptionPage.id);
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
        ),
        // title: Text(""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Consumer<CartModel>(builder: (context, cart, child) {
                return ListView.builder(
                  itemCount: cart.foods.length,
                  itemBuilder: (BuildContext context, int index) {
                    final food = cart.foods[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: ListTile(
                          leading: SizedBox(
                            height: 300,
                            width: 100,
                            child: Image.asset(
                              food.image,
                              alignment: Alignment.center,
                              fit: BoxFit.fill,
                              // width: 100,
                              // height: 200,
                              // height: double.infinity,
                            ),
                          ),
                          // title: Text(_foodItems[index]['strMeal']!),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                food.title,
                                style: kDarkMediumText,
                              ),
                              Text(
                                food.subTitle,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$${food.price}',
                                    style: kBoldPriceText,
                                  ),
                                  Row(
                                    children: [
                                      ContainerButton(
                                        color: Colors.grey[200],
                                        child: IconButton(
                                            color: Colors.black,
                                            onPressed: () {
                                              cart.decrementAmount(food);
                                            },
                                            icon: Icon(Icons.remove)),
                                      ),
                                      ContainerButton(
                                        color: Colors.white,
                                        child: Center(
                                          child: Text(
                                            // food.amount.toString(),
                                            food.amount.toString(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                      ContainerButton(
                                        color: Colors.red[400],
                                        child: IconButton(
                                            color: Colors.white,
                                            onPressed: () {
                                              cart.incrementAmount(food);
                                            },
                                            icon: Icon(Icons.add)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // child: ListTile(

                      // ),
                    );
                  },
                );
              }),
            ),
            Divider(
              height: 80,
              thickness: 2,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Services:",
                    style: kGreyMediumText,
                  ),
                  Text(
                    "\$10.00",
                    style: kBoldPriceText,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Text(
                          "Total Price:",
                          style: kGreyMediumText,
                        ),
                      ),
                      Consumer<CartModel>(builder: (context, cart, child) {
                        return Text(
                          '\$${cart.calculateTotalPrice()}',
                          style: kBoldPriceText,
                        );
                      })
                    ],
                  ),
                  Container(
                      // height: 40,
                      // width: 40,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 15),
                        child: TextButton(
                          child: Text(
                            "Checkout",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, PaymentPage.id);
                          },
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
