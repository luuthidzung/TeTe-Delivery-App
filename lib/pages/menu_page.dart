import 'package:flutter/material.dart';
import 'package:tete_shop/components/my_drawer.dart';
import 'package:tete_shop/components/my_food_tile.dart';
import 'package:tete_shop/components/my_sliver_app_bar.dart';
import 'package:tete_shop/components/my_current_location.dart';
import 'package:tete_shop/components/my_description_box.dart';
import 'package:tete_shop/components/my_tab_bar.dart';
import 'package:tete_shop/models/food.dart';
import 'package:provider/provider.dart';
import 'package:tete_shop/models/restaurant.dart';
import 'package:tete_shop/pages/food_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  //tab controller
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

//return list of food
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      //get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          //get individual menu
          final food = categoryMenu[index];
          // Food tile UI
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        drawer: const MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverAppBar(
              title: MyTabBar(tabController: _tabController),
              /* title: Text(
              'title',
              style: TextStyle(color: Colors.red),
            ),*/
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),

                  //my current location
                  const MyCurrentLocation(),
                  // description box
                  const MyDescriptionBox(),
                ],
              ),
            ),
          ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu),
            ),

            //     ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (context, index) => Text("1"),
            //     ),

            //     ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (context, index) => Text("2"),
            //     ),

            //     ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (context, index) => Text("3"),
            //     ),
            //     /////////
            //     ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (context, index) => Text("4"),
            //     ),
            //     //
            //     ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (context, index) => Text("5"),
            //     ),
            //   ],
            // ),
          ),
        ));
  }
}
