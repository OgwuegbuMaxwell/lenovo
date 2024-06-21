import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/pages/cart/cart_page.dart';
import 'package:lenovo/pages/favorite/favorite_page.dart';

Widget profilePageBar() {
  return DecoratedBox(
    decoration: const BoxDecoration(
      color: Colors.blueGrey,
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    FluentIcons.person_16_filled,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  child: const Text(
                    "Sign in/Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          GestureDetector(
            child: const Icon(
              FluentIcons.settings_16_regular,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    ),
  );
}



Widget profilePageShopCard(BuildContext context) {

  return Container(
    margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Text(
            "Shop",
            style: TextStyle(
              color: Styles.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          color: Colors.grey[200],
          thickness: 1,
        ),
        Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h, bottom: 25.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const FavoritePage(needToNavigateBack: true,)),
                    );
                  },
                  child: _buildIconAndText(icon: FluentIcons.heart_16_filled, text: "Favorites")
                ),
                  //
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const CartPage()),
                    );
                  },
                  child: _buildIconAndText(icon: FluentIcons.cart_16_filled, text: "Cart"),
                ),
                //
                _buildIconAndText(icon: FluentIcons.reward_12_regular, text: "Rewards"),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}



Widget profilePageServiceCard() {

  return Container(
     margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Text(
            "Service",
            style: TextStyle(
              color: Styles.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          color: Colors.grey[200],
          thickness: 1,
        ),
        Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h, bottom: 25.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIconAndText(icon: FluentIcons.globe_location_20_regular, text: "International warranty service"),
                _buildIconAndText(icon: FluentIcons.reward_12_regular, text: "Warranty status"),
                _buildIconAndText(icon: FluentIcons.toolbox_12_regular, text: "Repair status"),
                _buildIconAndText(icon: FluentIcons.building_16_regular, text: "Service Provide"),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


Widget profilePageAccountCard() {

  return Container(
     margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Text(
            "Account",
            style: TextStyle(
              color: Styles.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          color: Colors.grey[200],
          thickness: 1,
        ),
        Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h, bottom: 25.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIconAndText(icon: FluentIcons.book_contacts_20_regular, text: "Profile"),
                _buildIconAndText(icon: FluentIcons.wallet_16_regular, text: "Wallet"),
                _buildIconAndText(icon: FluentIcons.book_20_regular, text: "Address book"),
                _buildIconAndText(icon: FluentIcons.desktop_16_regular, text: "My Products"),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}



Widget profilePageCommunityCard() {

  return Container(
     margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Text(
            "Community",
            style: TextStyle(
              color: Styles.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          color: Colors.grey[200],
          thickness: 1,
        ),
        Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h, bottom: 25.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIconAndText(icon: FluentIcons.chat_arrow_double_back_16_regular, text: "Switch Forum"),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


Widget _buildIconAndText({required String text, required icon}) {
  return Container(
    width: 80.w,
    margin: EdgeInsets.only(right: 20.w),
    child: Column(
      children: [
        Icon(
          icon,
          color: Styles.primaryColor,
        ),
        SizedBox(height: 10.h,),
        Text(
          text,
          style: TextStyle(
            color: Styles.textColor,
          ),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
      ],
    ),
  );
}











