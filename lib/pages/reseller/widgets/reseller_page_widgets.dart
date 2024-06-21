import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget displayBanner() {
  return Container(
    //margin: EdgeInsets.symmetric(horizontal: 15.w),
    child: Stack(
      children: [
        // Image
        Image.asset(
          "assets/images/where_to_buy.jpg",
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        // Centered Text
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Where to Buy",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget displaySimulators() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black.withOpacity(0.3), // Border color
              width: 1.0, // Border width
            ),
          ),
          child: const Text(
            "Simulation 1",
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black.withOpacity(0.3), // Border color
              width: 1.0, // Border width
            ),
          ),
          child: const Text(
            "Simulation 2",
          ),
        ),
      ],
    ),
  );
}
