import 'package:flutter/material.dart';

//
import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/laptop/laptop_page_controller.dart';

import 'widgets/laptop_widgets.dart';

class LaptopPage extends StatefulWidget {
  const LaptopPage({super.key});

  @override
  State<LaptopPage> createState() => _LaptopPageState();
}

class _LaptopPageState extends State<LaptopPage> {
  // sort the laptops in the dummyLaptops list
  List<Laptop> sortedLaptops = sortLaptopsAlphabetically(dummyLaptops);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            buildLaptopPageBar(context: context),
            Expanded(
              child: Container(
                //margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
                //padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: screenWidth < 600 ? 16 / 22 : 16/12,
                  ),
                  itemCount: dummyLaptops.length,
                  itemBuilder: (context, index) {
                    //Laptop laptop = dummyLaptops[index];
                    Laptop laptop = sortedLaptops[index];

                    return buildLaptoListingCard(context: context, laptop: laptop);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
