import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';

Widget categoryPageBar(BuildContext context, String title) {
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
          Text(
            "LAPTOPS $title",
            style: const TextStyle(
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



Widget CategoryPageGrid({required BuildContext context,required List<Laptop> laptop, required int index}) {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage(
                    laptop[index].imageUrl,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        laptop[index].name,
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Center(
                      child: Text(
                        laptop[index].graphics,
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Center(
                      child: Text(
                        laptop[index].storage,
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
           Navigator.push(context, 
           MaterialPageRoute(
            builder: (context) => LaptopDetails(laptop: laptop[index]),
            ),
          );
          },
          child: Container(
            width: 100.w,
            margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
              child: Text(
                "View Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
