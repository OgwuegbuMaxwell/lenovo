import 'package:flutter/material.dart';
import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/trending/trending_laptop_controller.dart';
import 'package:lenovo/pages/trending/widgets/trending_laptop_widgets.dart';



class TrendingLaptopPage extends StatelessWidget {
  const TrendingLaptopPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Laptop> allTrendingLaptops = getAllTrendingLaptops(dummyLaptops);


    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              trendingNowPageBar(context),
              Expanded(
                child: ListView.builder(
                  itemCount: allTrendingLaptops.length,
                  itemBuilder: (context, index){
                    final laptop = allTrendingLaptops[index];

                    return displayTrendingNow(context,laptop);

                  },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}