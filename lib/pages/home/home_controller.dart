import 'dart:math';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';



// Function for displaying the grind of laptops on the home page
List<Laptop> grideOfLaptops() {

  //Generate a random seed 
  final random = Random();

  // Shuffle the list of laptops to get a random order
  final shuffledLaptops = List.of(dummyLaptops)..shuffle(random);

  // Select the first 6 laptops from the shuffled list
  final randomLaptops = shuffledLaptops.take(12).toList();

  

  return randomLaptops;


}






// Function to build the stars based on the laptop's star value.
List<Widget> buildStars(int starCount) {
  List<Widget> starWidgets = [];
  for (int i = 0; i < starCount; i++) {
    starWidgets.add(const Icon(
      FluentIcons.star_12_filled,
      color: Colors.orange,
    ));
  }
  return starWidgets;
}
