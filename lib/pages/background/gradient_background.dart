import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF223D64),
            Color(0xFF4EA699),
            Color(0xFF4EA699),
            Color(0xFF4EA699),
            Color(0xFF4EA699),
            Color(0xFF4EA699),
            Color(0xFF223D64),
          ],
        ),
      ),
    );
  }
}
