import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';

Widget trendingNowPageBar(BuildContext context) {
  return DecoratedBox(
    decoration: const BoxDecoration(
      color: Colors.blueGrey,
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const Text(
            "Trending Now",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox.shrink(),
          //
        ],
      ),
    ),
  );
}

Widget displayTrendingNow(BuildContext context, Laptop laptop) {
  return InkWell(
      onTap: () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => LaptopDetails(laptop: laptop)),
      );
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          //height: 100.h,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200.w,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      laptop.name,
                      style: Styles.headLineStyle2,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
  
                    Text(
                     "${ laptop.description.substring(0, 50)} ...",
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.h),
                color: Colors.grey.shade200,
                child: Image(
                  image: AssetImage(laptop.imageUrl),
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        //
        Divider(
          color: Colors.grey[200],
          thickness: 1,
        ),
      ],
    ),
  );
}
