import 'package:flutter/material.dart';

import '../../components.dart';

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 70.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Header(),
          Positioned(
            left: 10.0,
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ],
      ),
    );
  }
}
