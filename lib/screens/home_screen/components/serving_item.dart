import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ServingItem extends StatelessWidget {
  const ServingItem({
    Key? key,
    required this.title,
    required this.text,
    required this.imgUrl,
    this.isTab = false,
  }) : super(key: key);
  final String title;
  final String text;
  final String imgUrl;
  final bool isTab;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.white,
          child: Image.asset(
            imgUrl,
            height: 100.0,
            width: 50.0,
          ),
        ),
        const SizedBox(width: 20.0),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            SizedBox(
              width: ((width >= 600 && width <= 700) ||
                      (width >= 850 && width <= 1000))
                  ? 75
                  : 130,
              child: AutoSizeText(
                text,
                maxLines: 3,
                style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
