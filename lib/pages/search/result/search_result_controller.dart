

// sample data
// select data from dummydata
import 'dart:math';

import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';

List<Laptop> searchResultItems() {

  final random = Random();

  // Shuffle the list of laptops to get a random order
  final shuffledLaptops = List.of(dummyLaptops)..shuffle(random);

  return shuffledLaptops;

}



// the big deal

class SearchQuery {
  final String query;

  SearchQuery(this.query);

  List<Laptop> find() {
    final List<Laptop> matchingLaptops = [];

    for (final laptop in dummyLaptops) {
      final laptopName = laptop.name.toLowerCase();
      final queryWords = query.toLowerCase().split(' ');

      bool isMatch = true;
      for (final word in queryWords) {
        if (!laptopName.contains(word)) {
          isMatch = false;
          break;
        }
      }

      if (isMatch) {
        matchingLaptops.add(laptop);
      }
    }

    return matchingLaptops;
  }
}


/*
How to use SearchQuery class

 final searchQuery = SearchQuery("Lenovo 51");
  final matchingLaptops = searchQuery.execute();

*/
