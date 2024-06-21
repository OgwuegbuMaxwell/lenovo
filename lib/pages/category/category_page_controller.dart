


import 'package:lenovo/data/dummy_data.dart';

import '../../models/laptop.dart';

List<Laptop> getLaptopsByCategory(String categoryId) {
  return dummyLaptops.where((laptop) => laptop.categories.contains(categoryId)).toList();

  /*

  List<Laptop> laptops = getLaptopsByCategory('c2'); // Replace 'c2' with the desired category ID
  laptops.forEach((laptop) {
    print('Laptop ID: ${laptop.id}, Name: ${laptop.name}');
  });


  */


}


