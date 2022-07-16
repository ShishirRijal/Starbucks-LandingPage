import 'package:flutter/material.dart';

import 'package:starbucks_landing_page/screens/home_screen/components/hero_image.dart';
import 'package:starbucks_landing_page/screens/home_screen/components/hero_text.dart';
import 'package:starbucks_landing_page/screens/home_screen/components/serving_items_list.dart';

class DesktopHero extends StatelessWidget {
  const DesktopHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 20.0, horizontal: mediaQuery.width * 0.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 75.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Expanded(
                  child: HeroText(),
                ),
                Expanded(
                  flex: 2,
                  child: HeroImage(),
                ),
                Expanded(
                  child: _ServingItems(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ServingItems extends StatelessWidget {
  const _ServingItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return servingItems[index];
        },
        separatorBuilder: (context, _) {
          return const SizedBox(height: 40.0);
        },
        itemCount: servingItems.length,
        shrinkWrap: true,
      ),
    );
  }
}
