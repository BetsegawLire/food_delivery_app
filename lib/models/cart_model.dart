import 'package:flutter/material.dart';
import './food.dart';
import './choice_chip.dart';

class CartModel extends ChangeNotifier {
  final List<Food> _foods = [];
  // var choiceChpIsSelected =
  // chice chip list
  final List<CustomeChoiceChipModel> categories = [
    CustomeChoiceChipModel(
        image: 'images/icons8-pizza-48.png', isSelected: true, label: 'Pizza'),
    CustomeChoiceChipModel(
        image: 'images/icons8-hamburger-48.png',
        isSelected: false,
        label: 'Burgers'),
    CustomeChoiceChipModel(
        image: 'images/icons8-spaghetti-48.png',
        isSelected: false,
        label: 'Italian'),
    CustomeChoiceChipModel(
        image: 'images/icons8-gyoza-48.png',
        isSelected: false,
        label: 'Chinese'),
    CustomeChoiceChipModel(
        image: 'images/icons8-sushi-94.png', isSelected: false, label: 'Sushi'),
    CustomeChoiceChipModel(
        image: 'images/icons8-sombrero-64.png',
        isSelected: false,
        label: 'Mexican'),
  ];
  Food food = Food(
    title: "",
    price: 0,
    rating: 'rating',
    subTitle: "subTitle",
    image: "image",
    amount: 0,
    isFavorite: false,
  );
  CustomeChoiceChipModel singleChoiceChip =
      CustomeChoiceChipModel(image: "", label: "", isSelected: false);
  var totalPrice;

  List<Food> get foods => _foods;

  void addFood(Food food) {
    _foods.add(food);
    notifyListeners();
  }

  void removeFood(Food food) {
    _foods.remove(food);
    notifyListeners();
  }

  void changeFaorite(Food food) {
    food.isFavorite = !food.isFavorite;
    notifyListeners();
  }

// change choice chip state
  void changeChoiceChip(CustomeChoiceChipModel choiceChip) {
    // food.isFavorite = !food.isFavorite;
    choiceChip.isSelected = !choiceChip.isSelected;
    notifyListeners();
  }

  void incrementAmount(Food food) {
    food.amount++;
    notifyListeners();
  }

  void decrementAmount(Food food) {
    food.amount--;
    notifyListeners();
  }

  void foodDetail(Food selectedFood) {
    // _foods.add(food);
    food = selectedFood;
    notifyListeners();
  }

  dynamic calculateTotalPrice() {
    totalPrice = _foods
        .map((obj) =>
            obj.price *
            obj.amount) // calculate the product of x and y for each object
        .reduce((value, element) => value + element);

    totalPrice = totalPrice + 10;
    return totalPrice;
    // notifyListeners();
  }
}
