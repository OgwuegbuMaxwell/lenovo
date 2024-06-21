import 'package:flutter/material.dart';
import 'package:lenovo/pages/favorite/favorite_page.dart';
import 'package:lenovo/pages/home/home_page.dart';
import 'package:lenovo/pages/laptop/laptop.dart';
import 'package:lenovo/pages/profile/profile_page.dart';
import 'package:lenovo/pages/search/search_page.dart';


Widget buildPage(int index) {
  List<Widget> _widget = [
    const HomePage(),
    const LaptopPage(),
    const SearchPage(),
    FavoritePage(),
    const ProfilePage(),
  ];

  return _widget[index];
}


final List<Widget> widgetOptions = <Widget>
[
  const HomePage(),
  const LaptopPage(),
  const SearchPage(),
  FavoritePage(),
  const ProfilePage(),
];



