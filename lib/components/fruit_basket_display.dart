import 'package:flutter/material.dart';
import 'package:fruit_basket/constants.dart';

class FruitBasketDisplay extends StatelessWidget {
  const FruitBasketDisplay({super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(imagePath, width: 300, height: 300),
            Container(
              height: 10,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFF08626),
                borderRadius: BorderRadius.all(Radius.elliptical(150, 9)),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
