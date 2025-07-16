import 'package:flutter/material.dart';
import 'package:fruit_basket/components/custom_elevated_button.dart';
import 'package:fruit_basket/components/fruit_basket_display.dart';
import 'package:fruit_basket/screens/authentication_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FruitBasketDisplay(imagePath: 'assets/fruit_basket.png'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Get The Freshest Fruit Salad Combo',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 50),
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AuthenticationScreen(),
                        ),
                      );
                    },
                    title: "Let's Continue",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
