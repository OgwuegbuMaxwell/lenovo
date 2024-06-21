import 'dart:math';

import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';


// select data from dummydata
List<Laptop> getAllRecentlyViewedItems() {

  final random = Random();

  // Shuffle the list of laptops to get a random order
  final shuffledLaptops = List.of(dummyLaptops)..shuffle(random);

  return shuffledLaptops;

}

List<Laptop> fewRecentlyViewedItems() {

  List<Laptop> allRecentyViewedItems = getAllRecentlyViewedItems();

  // Select the first 6 laptops from the shuffled list
  final fewItems = allRecentyViewedItems.take(6).toList();

  

  return fewItems;


}





