import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../components.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kBackgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        // height: double.infinity,
        // width: double.infinity,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              const SizedBox(height: 30.0),
              const SearchButton(),
              const SizedBox(height: 30.0),

              // const Divider(thickness: 2.0),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    child: Text(
                      navbarItems[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(thickness: 1.0);
                },
                itemCount: navbarItems.length,
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
