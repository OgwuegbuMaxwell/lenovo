
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';
import 'package:lenovo/pages/reseller/reseller_page.dart';

Widget cartPageBar(BuildContext context){
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
            "Cart",
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



Widget buildCartItem({required BuildContext context,required Laptop carItem}) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.only(bottom: 15.h, left: 15.w, right: 15.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => LaptopDetails(laptop: carItem)),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          carItem.imageUrl,
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              //
              Container(
                width: 200,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      carItem.name,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Battery: ${carItem.battery}"
                    ),
                    Text(
                      "Storage: ${carItem.storage}"
                    ),
                    Text(
                      "RAM: ${carItem.ram}"
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        //
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              /*
              const Text(
                "Remove",
                style: TextStyle(
                  color: Color.fromARGB(255, 238, 95, 84),
                  fontWeight: FontWeight.bold,
                ),
              ),
              */
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const ResellerPage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(255, 35, 107, 183),
                  ),
                  child: const Text(
                    "Find a Reseller",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
              
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}



