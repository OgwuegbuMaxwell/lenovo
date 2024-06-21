import 'package:lenovo/models/laptop.dart';

class LaptopDetailsStates {
  const LaptopDetailsStates({
    this.index = 0,
    this.favoriteLaptops = const [],
    this.carts = const [],  
});

  final int index;

  //field for favorite status
  //List<String> for storing favorite laptop IDs in the state
  final List<String> favoriteLaptops;
  final List<String> carts;

  LaptopDetailsStates copyWith({
    int? index,
    List<String>? favoriteLaptops,
    List<String>? carts,
    }) {
    return LaptopDetailsStates(
      // if some is passed to copyWith, use it, else use the one initialized in the class
      index: index?? this.index,
      favoriteLaptops: favoriteLaptops ?? this.favoriteLaptops,
      carts: carts ?? this.carts,
    );
  }




}