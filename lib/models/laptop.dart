
enum Affordability {
    BUDGET_FRIENDLY,
    MID_RANGE,
    HIGH_END 
}

class Laptop {
  const Laptop({
    required this.id,
    required this.categories,
    required this.name,
    required this.imageUrl,
    required this.affordability,
    required this.battery,
    required this.description,
    required this.displaySize,
    required this.graphics,
    required this.price,
    required this.processor,
    required this.ram,
    required this.storage,
    required this.displayImg1,
    required this.displayImg2,
    required this.displayImg3,
    required this.types,
    required this.star,
    this.discount = 0,
    this.numberOfRaters = 0,
    required this.camera,
    required this.keyboard,
    required this.operatingSystem,
    required this.wLan,
    this.trending = false,
    
    //required this.features
  });

  final String id;
  final List<String> categories;
  final List<String> types;
  final String name;
  final String imageUrl;
  final Affordability affordability;
  final String storage;
  final String ram;
  final String battery;
  final String displaySize;
  final String processor;
  final String graphics;
  final int price;
  final String description;
  final String displayImg1;
  final String displayImg2;
  final String displayImg3;
  final int star;
  final double? discount;
  final int? numberOfRaters;
  final String operatingSystem;
  final String camera;
  final String keyboard;
  final String wLan;
  final bool? trending;

  //final List<String> features;

  double get discountedPrice {
  // Ensure that the discount property is accessed correctly
  final appliedDiscount = discount ?? 0;

  // Calculate the discounted price
  return price - (price * (appliedDiscount / 100));

  }


}