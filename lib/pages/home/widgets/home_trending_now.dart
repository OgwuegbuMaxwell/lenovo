import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/utils/appLayout.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';
import 'package:lenovo/pages/home/home_controller.dart';


class HomeTrendingNow extends StatelessWidget {
  final Laptop laptop;
  const HomeTrendingNow({super.key, required this.laptop});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);



    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => LaptopDetails(laptop: laptop)),
        );
      },
      child: Container(
        width: size.width*0.6,
        height: size.width < 600 ? 380.h : 600.h,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
        margin: EdgeInsets.only(right: 17.w, top: 5.h, bottom: 15.h),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //padding: EdgeInsets.all(20),
              height: size.width < 600 ? 180.h : 300.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                //color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(laptop.imageUrl),
                  fit: size.width < 600 ?  BoxFit.cover : BoxFit.contain,
                  
                ),
              ),
            ),
            //
            SizedBox(height: 10.h,),
            //
            Text(
              "${laptop.name} (${laptop.processor})",
              style: Styles.headLineStyle2.copyWith(
                color: Styles.kakiColor,
              ),
            ),
            SizedBox(height: 10.h,),
            // Conditionally add stars based on the laptop.star value.
            if (laptop.star != null && laptop.star > 0)
              Flex(
                direction: Axis.horizontal,
                children: buildStars(laptop.star),
              ),
            SizedBox(height: 10.h,),
            Text(
              laptop.storage,
              style: Styles.headLineStyle3.copyWith(
                color: Styles.kakiColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}