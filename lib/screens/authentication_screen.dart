import 'package:flutter/material.dart';
import 'package:fruit_basket/components/custom_elevated_button.dart';
import 'package:fruit_basket/components/custom_text_field.dart';
import 'package:fruit_basket/components/fruit_basket_display.dart';
import 'package:fruit_basket/screens/home_page.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FruitBasketDisplay(imagePath: 'assets/fruit_basket2.png'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextField(
                    title: 'What is your firstname?',
                    hintText: 'Tony',
                    controller: nameController,
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      if (nameController.text.isNotEmpty) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(userName: nameController.text),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please enter your name')),
                        );
                      }
                    },
                    title: "Start Ordering",
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
