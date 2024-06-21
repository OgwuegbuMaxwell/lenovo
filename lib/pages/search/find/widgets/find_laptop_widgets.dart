

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/search/result/search_result_controller.dart';
import 'package:lenovo/pages/search/result/search_result_page.dart';


Widget findLaptopBarWithTextField({ 
  required context, 
  required String hintText, 
  required String textType, 
  required final iconName,
  required TextEditingController searchController,
  }) {
  return DecoratedBox(
    decoration: const BoxDecoration(
      //color: Colors.blueGrey,
    ),
    child: Container(
      margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h, bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Styles.primaryFourthElementText,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
                
              ),
              margin: EdgeInsets.only(right: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.h,
                    width: 200.w,
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                         //contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                         focusedBorder: InputBorder.none,
                         enabledBorder: InputBorder.none,
                      ),
                      textAlignVertical: TextAlignVertical.center, // Center the text vertically
                      enableSuggestions: false, // Disable suggestion bar
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        final query = searchController.text;
                        if (query.isNotEmpty) {
                        print(query);
                        List<Laptop> results = searchResultItems();
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => SearchResultPage(query: query)),
                        );
                        }
                      },
                      child: Icon(iconName)
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(FluentIcons.dismiss_12_regular),
            ),
          ),
        ],
      ),
    ),
  );
}


Widget searchPageQuickLinks({required BuildContext context}) {

// setting section buttions
var quickLinksInfo = <String, String>{
  "ThinkPad": "t1",
  "Legion": "t2",
  "IdeaPad": "t3",
  "Yoga" : "t4",
  "ThinkBook" : "t5"

};

  return Container(
    //color: Colors.red,
    margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20.h),
          child: Text(
            "Quick Links",
            style: Styles.headLineStyle1,
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(quickLinksInfo.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => SearchResultPage(query: quickLinksInfo.keys.elementAt(index),),),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: Text(
                    quickLinksInfo.keys.elementAt(index),
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              );
            }),
            ]
          ),
        ),
      ],
    ),
  );
}







