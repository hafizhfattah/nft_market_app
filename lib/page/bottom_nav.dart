import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
import 'shop_page.dart';
import 'search_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: _currentIndex,
      child: Scaffold(
          extendBody: true,
          body: IndexedStack(
            index: _currentIndex,
            children: const [
              SearchPage(),
              ShopPage(),
            ],
          ),
          bottomNavigationBar: CustomNavigationBar(
            isFloating: false,
            iconSize: 30.0,
            borderRadius: const Radius.circular(12.0),
            selectedColor: Colors.white,
            strokeColor: Colors.white,
            unSelectedColor: const Color(0xff6c788a),
            backgroundColor: scaffoldbg,
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.search),
                title: Text(
                  "Search",
                  style: font,
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.shopping_cart),
                title: Text(
                  "Shop",
                  style: font,
                ),
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          )),
    );
  }
}

  // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: selectedIndex,
          //   type: BottomNavigationBarType.shifting,
          //   // backgroundColor: scaffoldbg,
          //   unselectedItemColor: Colors.grey[500],
          //   selectedItemColor: white,
          //   onTap: (index) {
          //     selectedIndex = index;
          //     setState(() {});
          //   },
          //   items: const [
          //     BottomNavigationBarItem(
          //         label: "Search",
          //         icon: Icon(
          //           CupertinoIcons.search,
          //         ),
          //         backgroundColor: scaffoldbg),
          //     BottomNavigationBarItem(
          //         label: "Shop",
          //         icon: Icon(
          //           CupertinoIcons.shopping_cart,
          //         ),
          //         backgroundColor: scaffoldbg),
          //   ],
          // ),