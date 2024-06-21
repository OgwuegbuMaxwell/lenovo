




// dummy random laptops as favorites

import 'dart:math';

import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';

List<Laptop> favoriteLaptops() {

  //Generate a random seed 
  final random = Random();

  // Shuffle the list of laptops to get a random order
  final shuffledLaptops = List.of(dummyLaptops)..shuffle(random);

  // Select the first 6 laptops from the shuffled list
  final randomLaptops = shuffledLaptops.take(6).toList();

  

  return randomLaptops;


}



