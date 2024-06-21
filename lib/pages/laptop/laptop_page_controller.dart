import 'package:lenovo/models/laptop.dart';

List<Laptop> sortLaptopsAlphabetically(List<Laptop> laptops) {
  // Sort the laptops list alphabetically by their names
  laptops.sort((a, b) => a.name.compareTo(b.name));
  return laptops;
}





