import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String name;
  final String itemPrice;
  final String imagePath;
  final Color color;
  void Function()? onPressed;
   GroceryItemTile({
    super.key,
    required this.name,
    required this.imagePath,
    required this.itemPrice,
    required this.color,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color.withOpacity(0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),
            Text(name),
            MaterialButton(
              onPressed: onPressed, // Corrected onPressed syntax
              color: color,
              child: Text(
                '\$' + itemPrice,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold, // Corrected fontWeight
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
