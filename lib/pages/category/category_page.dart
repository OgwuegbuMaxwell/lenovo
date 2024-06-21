import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/common/values/app_styles.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/category/widgets/category_page_widgets.dart';


class CategoryPage extends StatelessWidget {
  final List<Laptop> laptops;
  final String categoryText;
  const CategoryPage({super.key, required this.laptops, required this.categoryText});


  

  @override
  Widget build(BuildContext context) {

    if(laptops.isEmpty) {
      return SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                categoryPageBar(context,categoryText),
                SizedBox(height: 100.h,),
                Center(child: Text("No Laptop found"),),
              ],
            ),
          ),
        ),
      );
    }
    
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              categoryPageBar(context,categoryText),
              SizedBox(height: 15.h,),
              Expanded(
                child: Container(
                  child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 16/30,
                  ),
                  itemCount: laptops.length, 
                  itemBuilder: (BuildContext context, int index){
                    return CategoryPageGrid(context: context,laptop: laptops, index: index);
                      // return GridTile(
                      //   child: CategoryPageGrid(laptop: laptops, index: index),
                      // );
                    },
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}