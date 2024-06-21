// build to bar with seach and cat icon
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/application/bloc/app_blocs.dart';
import 'package:lenovo/pages/application/bloc/app_events.dart';
import 'package:lenovo/pages/cart/cart_page.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';
import 'package:lenovo/pages/search/find/find_laptop_page.dart';

Widget buildLaptopPageBar({required BuildContext context}) {
  return DecoratedBox(
    decoration: const BoxDecoration(
      color: Colors.blueGrey,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          Container(
            margin: EdgeInsets.only(left: 10.w),
            child: GestureDetector(
              onTap: () {
                context.read<AppBlocs>().add(TriggerAppEvent(0));
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
                  child: Container(
                    width: 80,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage("assets/icons/logo_white.png"),
                        )),
                  ),
                ),
              ),
            ),
          ),
          //
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const FindLaptopPage()),
                  );
                },
                child: const Icon(
                  FluentIcons.search_12_regular,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => CartPage()),
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
        ],
      ),
    ),
  );
}

// laptop listing on laptop page

Widget buildLaptoListingCard({required BuildContext context ,required Laptop laptop}) {
    final screenWidth = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => LaptopDetails(laptop: laptop)),
      );
    },
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              laptop.imageUrl, 
              height: screenWidth < 600 ? 150.h : 400.h, 
              fit: screenWidth < 600 ? BoxFit.cover : BoxFit.contain,
            ),
          ),
          //const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Text(
                laptop.name,
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Text(
                laptop.processor,
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Text(
                laptop.storage,
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
