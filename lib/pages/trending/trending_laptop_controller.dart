
import 'dart:math';

import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';

///////////// Handle Trending Laptops   ///////////////////////////
//
List<Laptop> getAllTrendingLaptops(List<Laptop> laptops) {
  return laptops.where((laptop) => laptop.trending == true).toList();


}

List<Laptop> getFewTrendingLaptops() {
  List<Laptop> trendingLaptops = getAllTrendingLaptops(dummyLaptops);

  final random = Random();

  // Shuffle the list of trending laptops to get a random order
  final shuffledTrendingLaptops = List.of(trendingLaptops)..shuffle(random);



  final fewTrendingLaptops = shuffledTrendingLaptops.take(6).toList();

  return fewTrendingLaptops;
}
