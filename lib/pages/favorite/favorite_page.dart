import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lenovo/data/dummy_data.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/pages/favorite/favorite_page_controller.dart';
import 'package:lenovo/pages/favorite/widgets/favorite_widgets.dart';
import 'package:lenovo/pages/global/laptop_detail/bloc/laptop_details_blocs.dart';

import '../global/laptop_detail/bloc/laptop_details_states.dart';

class FavoritePage extends StatefulWidget {
  final bool needToNavigateBack;
  const FavoritePage({super.key, this.needToNavigateBack = false});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  // list of favorite laptops
  //List<Laptop> favoriteItems = favoriteLaptops();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<LaptopDetailsBlocs, LaptopDetailsStates>(
          builder: (context, state) {
             final favoriteLaptopIds = state.favoriteLaptops;
             final favoriteLaptops = dummyLaptops.where((laptop) => favoriteLaptopIds.contains(laptop.id)).toList();
             return Column(
              children: [
                favoritePageBar(context: context, needToNavigateBack: widget.needToNavigateBack),
                favoriteLaptopIds.isEmpty
                    ? Container(
                      margin: EdgeInsets.only(top: 30.h),
                        child: const Center(
                          child: Text('You have no favorite laptops.'),
                        ),
                      )
                    : Expanded(
                      child: ListView.builder(
                        itemCount: favoriteLaptops.length,
                        itemBuilder: (context, index) {
                        final laptop = favoriteLaptops[index];
                        final discountedPrice = laptop.discountedPrice;
                        return Column(
                          children: [
                            //
                            favoriteDetailContainer(context: context,laptop: laptop, discountedPrice: discountedPrice),
                            //
                            Divider(
                              color: Colors.grey[200],
                              thickness: 1,
                            ),
                            //
                          ],
                        );
                        },
                      ),
                    ),
              ],
             );
          },
        ),
        /*
        body: BlocBuilder<LaptopDetailsBlocs, LaptopDetailsStates>(
          builder: (context, state) {
            final favoriteLaptopIds = state.favoriteLaptops;
            if (favoriteLaptopIds.isEmpty) {
              return const Center(
              child: Text('You have no favorite laptops.'),
            );
          }
          final favoriteLaptops = dummyLaptops.where((laptop) => favoriteLaptopIds.contains(laptop.id)).toList();
          return ListView.builder(
            itemCount: favoriteLaptops.length,
            itemBuilder: (context, index) {
              final laptop = favoriteLaptops[index];
              final discountedPrice = laptop.discountedPrice;
              return Column(
                children: [
                  //
                  favoriteDetailContainer(context: context,laptop: laptop, discountedPrice: discountedPrice),
                  //
                  Divider(
                    color: Colors.grey[200],
                    thickness: 1,
                  ),
                ],
              );
            },
          );
        },
        ),*/


        /*body: Container(
          child: Column(
            children: [
              favoritePageBar(context: context, needToNavigateBack: widget.needToNavigateBack),
              Expanded(
                child: ListView.builder(
                  itemCount: favoriteItems.length,
                  itemBuilder: (context, index) {
                    final laptop = favoriteItems[index];
                    final discountedPrice = laptop.discountedPrice;
                    print("Price: ${laptop.price} Discount: ${laptop.discount} Discount Price: ${discountedPrice}");
                    return Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        favoriteDetailContainer(context: context,laptop: laptop, discountedPrice: discountedPrice),
                        //
                        Divider(
                          color: Colors.grey[200],
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15.w),
                              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.h),
                              decoration: BoxDecoration(
                                //color: Colors.orange,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: const Text(
                                "Remove",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 238, 95, 84),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey[200],
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),*/
      ),
    );
  }
}
