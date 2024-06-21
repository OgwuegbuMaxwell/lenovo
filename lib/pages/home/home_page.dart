import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/home/widgets/category_view.dart';
import 'package:lenovo/pages/home/widgets/home_grid_view.dart';
import 'package:lenovo/pages/home/widgets/home_trending_now.dart';
import 'package:lenovo/pages/trending/trending_laptop_controller.dart';
import 'package:lenovo/pages/trending/trending_laptop_page.dart';

import 'widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // for displaying few trending now laptops on the home page
  //List<Laptop> trendingNow = getFewTrendingLaptops();
  List<Laptop> fewTrendingNow = getFewTrendingLaptops();


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    print("The screen width is: ${screenWidth}");
    print("The screen height is: ${screenHeight}");
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            buildSearchBar(context),
            //
            SizedBox(
              height: 15.h,
            ),
            //
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                children: availableCategories
                    .map((singelCategory) =>
                        CategoryView(category: singelCategory))
                    .toList(),
                //children: availableCategories,
              ),
            ),
            //
            SizedBox(
              height: 15.h,
            ),
            //
            const HomeGridView(),
            //
            SizedBox(height: 15.h,),
            //
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Now",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      print("You are tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => TrendingLaptopPage(),
                        ),
                      );
                    },
                    child: Text(
                      "View All",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              ),
            ),
            //
            SizedBox(height: 15.h,),
            //
      
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20.w),
              
              child: Row(
                children: fewTrendingNow.map((singleTrendingNow) => HomeTrendingNow(laptop: singleTrendingNow,)).toList(),
      
              ),
            ),
            //HomeTrendingNow(),
      
          ],
        ),
      ),
    );
  }
}
