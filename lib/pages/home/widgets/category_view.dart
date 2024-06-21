import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/utils/appLayout.dart';
import 'package:lenovo/models/category.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/category/category_page.dart';
import 'package:lenovo/pages/category/category_page_controller.dart';

class CategoryView extends StatelessWidget {
  final Category category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final size = AppLayout.getSize(context);

    return GestureDetector(
      onTap: () {
      String catId = category.id;
      String categoryName = category.text;
      List<Laptop> laptopsByCat = getLaptopsByCategory(catId);
      laptopsByCat.forEach((laptop) {
        print('Laptop ID: ${laptop.id}, Name: ${laptop.name}');
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryPage(laptops: laptopsByCat, categoryText: categoryName,),
        ),
      );
      },
      child: SizedBox(
        width: size.width * 0.85,
        height: screenWidth < 600 ? 150.h : 600.h,
        child: Container(
          margin: EdgeInsets.only(right: 16.h),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/${category.image}"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(7.h),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsetsDirectional.symmetric(
                      vertical: 10.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                    //color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(3.h),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, // Start the gradient at the top center
                      end: Alignment.bottomCenter, // End the gradient at the bottom center
                      colors: [
                        Colors.black.withOpacity(0.0), // Transparent color at the top
                        Colors.black.withOpacity(0.5), // The specified color (with 50% opacity) at the bottom
                      ],
                    ),
                  ),
                  child: Text(
                    category.text,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
