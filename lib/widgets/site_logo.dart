import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text(
        'RY',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: Colors.blueAccent),
      ),
    );
  }
}
