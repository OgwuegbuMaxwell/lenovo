import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';

Widget favoritePageBar({required BuildContext context, required bool needToNavigateBack}) {
  return DecoratedBox(
    decoration: const BoxDecoration(
      color: Colors.blueGrey,
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Visibility(
            visible: needToNavigateBack,
            child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          ),
          const Text(
            "Yor Favorites",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          //
          Container(),
        ],
      ),
    ),
  );
}

// container for displaying the laptop and some of the specs

Widget favoriteDetailContainer(
    {required BuildContext context,
    required Laptop laptop,
    required double discountedPrice}) {
    final screenWidth = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LaptopDetails(laptop: laptop)),
      );
    },
    child: Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          children: [
            Container(
              height: 100.h,
              width: 100.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    laptop.imageUrl,
                  ),
                ),
              ),
            ),
            //
            SizedBox(
              width: 10.w,
            ),
            //
            Expanded(
              child: Container(
                height: screenWidth < 600 ? 120.h : 200.h,
                decoration: const BoxDecoration(
                    //color: Colors.red,
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      laptop.storage,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    //
                    SizedBox(
                      height: 3.h,
                    ),
                    //
                    Text(
                      "${laptop.name}(${laptop.processor})",
                    ),
                    //
                    SizedBox(
                      height: 5.h,
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        laptop.discount! > 0
                            ? Text(
                                "\$${discountedPrice.toString()}",
                              )
                            : Text(
                                "\$${laptop.price.toString()}",
                              ),
                        // display discount price pecent
                        laptop.discount! > 0
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.1),
                                ),
                                child: Text(
                                  "-${laptop.discount!.toInt()}%",
                                  style: const TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                    laptop.discount! > 0
                        ? Text(
                            "\$${laptop.price.toString()}",
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
