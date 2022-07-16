import 'package:flutter/material.dart';

import 'package:starbucks_landing_page/screens/home_screen/components/hero_image.dart';
import 'package:starbucks_landing_page/screens/home_screen/components/hero_text.dart';
import 'package:starbucks_landing_page/screens/home_screen/components/serving_items_list.dart';

class TabletHero extends StatelessWidget {
  const TabletHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Padding(
      // height: mediaQuery.height * 0.6,
      padding: EdgeInsets.symmetric(
          vertical: 20.0, horizontal: mediaQuery.width * 0.05),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50.0),
            Row(
              children: const [
                Expanded(
                  child: HeroText(),
                ),
                Expanded(
                  flex: 2,
                  child: HeroImage(),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            SizedBox(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: servingItems,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
