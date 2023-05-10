import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import '../models/choice_chip.dart';

class CustomChoiceChip extends StatelessWidget {
  final image;
  final text;
  final isSelected;
  // CustomeChoiceChipModel chipModel;

  CustomChoiceChip({this.image, this.text, this.isSelected});
  // CustomChoiceChip({required this.chipModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Consumer<CartModel>(builder: (context, cart, child) {
        return ChoiceChip(
          // label: Text(_categories[index]),
          label: Row(
            children: [
              Image.asset(
                image!,
                // chipModel.image,
                scale: 1.5,
              ),
              Text(
                text!,
                // chipModel.label,
                style:
                    TextStyle(color: isSelected ? Colors.white : Colors.black),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          selectedColor: Colors.red[400],
          selectedShadowColor: Colors.white,
          selected: isSelected,
          // selected: true,
          onSelected: (bool selected) {},
        );
      }),
    );
  }
}
