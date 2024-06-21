import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/recently_viewed/recently_viewed_page.dart';
import 'package:lenovo/pages/search/find/find_laptop_page.dart';

// container for "Whhat are you looking for" (Search Page)
Widget searchPageBar() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find Laptop",
          style: TextStyle(
            fontSize: 35.sp,
            fontWeight: FontWeight.bold,
            color: Styles.textColor,
          ),
        ),
        Text(
          "that's perfect for you",
          style: TextStyle(
            fontSize: 35.sp,
            fontWeight: FontWeight.bold,
            color: Styles.textColor,
          ),
        ),
      ],
    ),
  );
}


// container for " You orders" (Search page)

Widget borderedListWithIcon({required icon, required String text}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
    padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        //Icon(Icons.list_alt),
        Icon(icon),
        SizedBox(width: 10.w,),
        Text(
          text,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold
          ),
    ),
      ],
    ),
  );
}


// find laptops button

Widget findLaptopButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const FindLaptopPage()),
      );
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 4, 49, 214),
        //color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          "Find Laptops",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    ),
  );
}


// Recently viewed heading

Widget recentlyViewedHeading({required BuildContext context, required List<Laptop> laptops}) {
  return Container(
     margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recently Viewed",
           style: Styles.headLineStyle2,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => RecentlyViewedPage(laptops: laptops,)),
            );
          },
          child: Text(
            "View All",
            style: TextStyle(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    ),
  );
}


//



