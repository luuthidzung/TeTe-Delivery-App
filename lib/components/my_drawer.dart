import 'package:flutter/material.dart';
import 'package:tete_shop/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            // applogo
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset(
                'lib/image/tetelogo.jpg',
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Divider(
                color: Colors.red,
              ),
            ),
            //homelist
            MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),

            //settinglist title
            MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {},
            ),

            //logout list title

            MyDrawerTile(
              text: "L O G O U T",
              icon: Icons.logout,
              onTap: () {},
            ),
          ],
        ));
  }
}
