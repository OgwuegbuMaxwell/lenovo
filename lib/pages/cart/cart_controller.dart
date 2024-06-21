



import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';

List<Laptop> getCartItems() {



  // Select the first 6 laptops from the dummydata
  final cartItems = dummyLaptops.take(6).toList();

  

  return cartItems;


}


