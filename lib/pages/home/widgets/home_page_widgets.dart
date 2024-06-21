import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/pages/cart/cart_page.dart';
import 'package:lenovo/pages/search/find/find_laptop_page.dart';


// build to bar with seach and cat icon
Widget buildSearchBar(BuildContext context) {
  return DecoratedBox(
    decoration: const BoxDecoration(
      color: Colors.blueGrey,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //
        GestureDetector(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => FindLaptopPage(),
              ),
            );
          },
          child: Container(
            width: 300.w,
            margin: EdgeInsets.only(right: 10.w, top: 10.w, bottom: 10.w, left: 10.w),
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF4F6FD),
                ),
            child: Row(
              children: [
                const Icon(
                  FluentIcons.search_12_regular,
                  color: Color(0xFFBFC205),
                ),
                SizedBox(width: 10.w,),
                Text(
                  "Search",
                  style: Styles.headLineStyle4,
                ),
              ],
            ),
          ),
        ),
        //
        InkWell(
          onTap: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(right: 10.w),
            child: Icon(
              FluentIcons.cart_16_regular,
              color: Colors.white,
              size: 30.sp,
              
            ),
          ),
        ),
      ],
    ),
  );
}


// 


