import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi ,\nI'm Rehyan yadav\nFlutter Developer",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: CustomColor.whitePrimary,
                    height: 1.5),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in Touch"),
                ),
              )
            ],
          ),
          Image.asset(
            'assets/image01.png',
            width: screenWidth / 2,
          )
        ],
      ),
    );
  }
}
