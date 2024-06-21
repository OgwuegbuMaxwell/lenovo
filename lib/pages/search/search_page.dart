import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/cart/cart_page.dart';
import 'package:lenovo/pages/favorite/favorite_page.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';
import 'package:lenovo/pages/recently_viewed/recently_viewed_page_controller.dart';
import 'package:lenovo/pages/search/search_page_controller.dart';
import 'package:lenovo/pages/search/widgets/search_page_widgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Laptop> recentlyViewed = fewRecentlyViewedItems();

  List<Laptop> allRecentlyViewed = getAllRecentlyViewedItems();


  @override
  void initState() {
   print(recentlyViewed);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            searchPageBar(),
            //
            InkWell(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const FavoritePage(needToNavigateBack: true,)),
                );
              },
              child: borderedListWithIcon(icon: FluentIcons.heart_12_filled, text: "Your Favorites"),
            ),
            //
            InkWell(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const CartPage()),
                );
              },
              child: borderedListWithIcon(icon: FluentIcons.cart_20_filled, text: "Your Cart"),
            ),
            //
            findLaptopButton(context),
            //
            recentlyViewedHeading(context: context, laptops: allRecentlyViewed),
            //
            SizedBox(
              height: 400.h,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 16/20,
                  ),
                  itemCount: recentlyViewed.length, 
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => LaptopDetails(laptop: recentlyViewed[index])),
                        );
                      },
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                recentlyViewed[index].imageUrl,
                              ),
                              fit: BoxFit.contain,
                            ),
                            //borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}


/*
Container(
        child: Column(
          children: [
            searchPageBar(),
          ],
        ),
      )

*/