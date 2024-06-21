import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';
import 'package:lenovo/pages/global/widgets/expandable_description.dart';
import 'package:lenovo/pages/search/result/search_result_controller.dart';

Widget searchResultPageBar(BuildContext context) {
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
              //context.read<LaptopDetailsBlocs>().add(LaptopDetailsDots(0));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const Text(
            "Search Results",
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

// display each result
Widget buildSearchResult(
    {required BuildContext context, required Laptop laptop, required String query}) {
      print("This is the query: ${query}");
  return Container(
    //color: Colors.red,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Image(
                image: AssetImage(laptop.imageUrl),
                height: 100.h,
                width: 100.w,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    child: Text(
                      laptop.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Container(
                    width: 230.w,
                    child: ExpandableDescription(
                      description: laptop.description,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => LaptopDetails(laptop: laptop)),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 34, 91, 137),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  margin: EdgeInsets.only(right: 15.w),
                  child: const Text(
                    "View Detail",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey[200],
          thickness: 1,
        ),
      ],
    ),
  );
}
