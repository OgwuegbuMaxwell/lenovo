import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_blocs.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_events.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_states.dart';
import 'package:lenovo/pages/reseller/reseller_page.dart';

Widget laptopDeatilsPageBar(BuildContext context, String laptopName) {
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
              context.read<LaptopDetailsBlocs>().add(LaptopDetailsDots(0));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          Text(
            laptopName.length > 20 ? "${laptopName.substring(0, 20)}..." : laptopName,
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

// product image slider
Widget imageSlider(
    {required Laptop laptop,
    required BuildContext context,
    required LaptopDetailsStates state}) {
      final screenWidth = MediaQuery.of(context).size.width;
  print(laptop.displayImg2);
  return Column(
    children: [
      // the slider
      Container(
        width: 325.w,
        height: screenWidth < 600 ? 160.h : 400.h,
        // the 3 sliders are inside childreen of pageView
        child: PageView(
          onPageChanged: (value) {
            //print(value);
            context.read<LaptopDetailsBlocs>().add(LaptopDetailsDots(value));
          },
          children: [
            _slidersContainer(context: context ,path: laptop.displayImg1),
            _slidersContainer(context: context, path: laptop.displayImg2),
            _slidersContainer(context: context, path: laptop.displayImg3),
          ],
        ),
      ),
      // The dots... used dots indicator package
      Container(
        child: DotsIndicator(
          dotsCount: 3,
          position: state.index,
          decorator: DotsDecorator(
              color: Styles.primaryThirdElementText,
              activeColor: Styles.primarySecondaryElementText,
              size: Size.square(5.0),
              activeSize: Size(17.0, 5.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              )),
        ),
      ),
    ],
  );
}

// sliders widgets
Widget _slidersContainer({required BuildContext context,required String path}) {
      final screenWidth = MediaQuery.of(context).size.width;
  return Container(
    margin: EdgeInsets.only(top: 10.h),
    width: 325.w,
    height:  160.h,
    decoration: BoxDecoration(
        image: DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage(path),
    )),
  );
}

Widget displayLaptopName(Laptop laptop) {
  return Container(
    width: 350.w,
    padding: EdgeInsets.symmetric(vertical: 10.h),
    child: Center(
      child: Text(
        "${laptop.name}(${laptop.processor})",
        style: Styles.headLineStyle1,
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    ),
  );
}


// build favorite and cart button
Widget buildCartAndFavoriteBtn({
  required BuildContext context, 
  required String laptopId, 
  required bool isFavorite, 
  required bool isInCart
  }) {
  final screenWidth = MediaQuery.of(context).size.width;
  return Container(
    margin: EdgeInsets.only(right: 15.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Container(
          child: Flex(
            direction: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<LaptopDetailsBlocs>().add(ToggleFavorite(laptopId));
                },
                child: Container(
                  child: Icon(
                    isFavorite 
                        ? FluentIcons.heart_12_filled
                        : FluentIcons.heart_12_regular,
                    size: 30.sp,
                    color: isFavorite ? Colors.red : null,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<LaptopDetailsBlocs>().add(ToggleCart(laptopId));
                },
                child: Container(
                  padding: screenWidth < 600 ?  EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h) : EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                  margin: EdgeInsets.only(left: 10.w),
                  decoration: BoxDecoration(
                    color: isInCart ? Color.fromARGB(255, 227, 233, 238) : Color.fromARGB(255, 34, 91, 137),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    isInCart ? "Remove from Cart" : "Add to Cart",
                    style: TextStyle(
                       color: isInCart ? Color.fromARGB(255, 242, 11, 11) : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    ),
  );
}


// system specification heading
Widget systemSpecHeading() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "System Specs:",
          style: TextStyle(
            fontSize: 28,
            letterSpacing: 2.0,
            color: Styles.textColor,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 2,
        ),
      ],
    ),
  );
}

// system specification details
Widget buildSystemSpecs(Laptop laptop) {
  return Container(
    color: Colors.grey[100],
    margin: EdgeInsets.only(left: 15.w, right: 15.w),
    padding: EdgeInsets.only(top: 15.h, right: 10.w, left: 10.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _singleSpecContainer(title: "Processor", detail: laptop.processor),
        _singleSpecContainer(title: "Operating System", detail: laptop.operatingSystem),
        _singleSpecContainer(title: "Graphic", detail: laptop.graphics),
        _singleSpecContainer(title: "Memory", detail: laptop.ram),
        //
        _singleSpecContainer(title: "Storage", detail: laptop.storage),
        _singleSpecContainer(title: "Display Size", detail: laptop.displaySize),
        _singleSpecContainer(title: "Camera", detail: laptop.camera),
        _singleSpecContainer(title: "Keyboard", detail: laptop.keyboard),
        _singleSpecContainer(title: "WLAN", detail: laptop.wLan),
      ],
    ),
  );
}

// single detail container
Widget _singleSpecContainer({required String title, required String detail}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          detail,
          style: const TextStyle(
            color: Styles.primarySecondaryElementText,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 2,
        ),
        SizedBox(height: 10.h,),
      ],
    ),
  );
}



// find Reseller Button
Widget findResellerBtn({required BuildContext context}) {
  final screenWidth = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => ResellerPage()),
      );
    },
    child: Container(
      padding: EdgeInsets.symmetric(vertical: screenWidth < 600 ? 10.h : 20.h),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      color: Color.fromARGB(255, 34, 91, 137),
      child: const Center(
        child: Text(
          "Find a Reseller",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}