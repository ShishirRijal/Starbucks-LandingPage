import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    Key? key,
    this.imageHeight = 380.0,
    this.circleRadius = 180.0,
    this.bottom = 50.0,
    this.imageWidth,
  }) : super(key: key);
  final double imageHeight;
  final double circleRadius;
  final double bottom;
  final double? imageWidth;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: circleRadius,
          backgroundColor: Colors.deepOrange.shade400,
        ),
        Positioned(
          bottom: bottom,
          child: Image.asset(
            'assets/images/ramsai.png',
            height: imageHeight,
            width: imageWidth ?? mediaQuery.width * 0.25,
          ),
        ),
      ],
    );
  }
}
