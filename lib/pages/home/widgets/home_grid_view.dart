import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/global/laptop_detail/laptop_details.dart';
import 'package:lenovo/pages/home/detail/detail_page.dart';
import 'package:lenovo/pages/home/home_controller.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    List<Laptop> gridList = grideOfLaptops();

    // Check if selectedLaptops is null or empty
    if (gridList == null || gridList.isEmpty) {
      return  const Center(
        child: Text("No item found"),
      );
    }

    return SizedBox(
      height: screenWidth < 600 ? 280.h : 500.h,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 10 ,
            mainAxisSpacing: 10,
          ),
          itemCount: gridList.length,
          itemBuilder: (context, index) {
            //List<Laptop> laptop = selectedLaptops;
            List<Laptop> laptop = gridList;
            return GestureDetector(
              onTap: () {
                // Handle item click and navigate to the detail screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LaptopDetails(laptop: laptop[index],),
                  ),
                );
                
              },
              child: Column(
                children: [
                  Container(
                    width: 150.w,
                //height: 500.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey[200],
                  //color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      laptop[index].imageUrl,
                      fit:  BoxFit.fill,
                      height: screenWidth < 600 ? 80.h : 300.h,
                      width: 150.w,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 8),
                    Container(
                      child: Center(
                        child: Text(
                          (laptop[index].name).length <= 14 ? laptop[index].name
                          : "${laptop[index].name.substring(0, 12)}..",
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
              ),
            );
          },
        ),
      ),
    );

  }
}


  



    
    
