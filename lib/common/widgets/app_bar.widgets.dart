import 'package:flutter/material.dart';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';


// Widget for AppBar
AppBar buildAppBar() {
  return AppBar(
    elevation: 0.5,
    title: Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 18,
            height: 16,
            child: Image.asset("assets/icons/menu.png"),
          ),
          GestureDetector(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
                child: Container(
                  width: 80,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                    image: AssetImage("assets/icons/logo_white.png"),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}











// buttom bar items
var bottomTabs = const [
          BottomNavigationBarItem(
          icon: Icon(FluentIcons.home_12_regular),
          activeIcon: Icon(FluentIcons.home_12_filled),
          //icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentIcons.laptop_16_regular),
          activeIcon: Icon(FluentIcons.laptop_16_filled),
          label: "Laptops",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentIcons.search_12_regular),
          activeIcon: Icon(FluentIcons.search_12_filled),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentIcons.heart_12_regular),
          activeIcon: Icon(FluentIcons.heart_12_filled),
          label: "Favorites",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentIcons.person_12_regular),
          activeIcon: Icon(FluentIcons.person_12_filled),
          label: "Settings",
        ),
]; 